"""
transform.py
Cleans and merges the extracted dataframes.
Merging logic: event.csv <- item_category.csv (on item_id)
Optionally enrich with category_tree.csv if meaningful columns exist.
"""
import pandas as pd
import logging

logging.basicConfig(level=logging.INFO, format="%(levelname)s:%(message)s")

def normalize_columns(df):
    # lower-case column names and strip spaces
    df = df.copy()
    df.columns = [c.strip().lower().replace(" ", "_") for c in df.columns]
    return df

def parse_dates(df):
    # try common date columns
    df = df.copy()
    for col in ["order_date", "order_timestamp", "event_time", "timestamp", "date"]:
        if col in df.columns:
            try:
                df[col] = pd.to_datetime(df[col], errors="coerce")
                logging.info(f"Parsed dates in column: {col}")
            except Exception:
                logging.warning(f"Could not parse dates in column: {col}")
    return df

def clean_df(df):
    df = df.copy()
    df = normalize_columns(df)
    df = parse_dates(df)
    # strip string columns
    obj_cols = df.select_dtypes(include=["object"]).columns
    for c in obj_cols:
        df[c] = df[c].astype(str).str.strip()
    # drop exact duplicates
    before = len(df)
    df = df.drop_duplicates().reset_index(drop=True)
    after = len(df)
    logging.info(f"Dropped {before-after} duplicate rows")
    return df

def merge_data(event_df, item_df, category_df=None):
    # Normalize columns first
    event_df = clean_df(event_df)
    item_df = clean_df(item_df)
    if category_df is not None:
        category_df = clean_df(category_df)

    # Determine join column
    join_col = None
    if "item_id" in event_df.columns and "item_id" in item_df.columns:
        join_col = "item_id"
    else:
        # attempt to find an overlapping column
        common = set(event_df.columns).intersection(set(item_df.columns))
        if common:
            join_col = list(common)[0]

    if not join_col:
        raise ValueError("No common join column found between event and item dataframes. Please check names.")

    logging.info(f"Merging on column: {join_col}")
    merged = event_df.merge(item_df, on=join_col, how="left", suffixes=("", "_item"))
    logging.info(f"Merged shape after event<-item merge: {merged.shape}")

    if category_df is not None:
        # attempt to find a category key in item table (e.g., category_id)
        common_with_cat = set(merged.columns).intersection(set(category_df.columns))
        # prefer 'category_id' if present
        if "category_id" in merged.columns and "category_id" in category_df.columns:
            merged = merged.merge(category_df, on="category_id", how="left", suffixes=("", "_cat"))
            logging.info("Merged with category_tree on category_id")
        elif common_with_cat:
            # join on first common column
            col = list(common_with_cat)[0]
            merged = merged.merge(category_df, on=col, how="left", suffixes=("", "_cat"))
            logging.info(f"Merged with category_tree on {col}")
        else:
            logging.info("No suitable join column found for category_tree; skipping category merge.")

    return merged

if __name__ == "__main__":
    # quick local test if run directly (assumes extract has been executed)
    from pipeline_scripts.extract import extract_all
    evt, itm, cat = extract_all()
    merged = merge_data(evt, itm, cat)
    print("Final merged shape:", merged.shape)
