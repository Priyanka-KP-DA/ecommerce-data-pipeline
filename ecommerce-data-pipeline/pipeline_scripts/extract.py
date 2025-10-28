"""
extract.py
Reads raw CSV files and performs initial validation.
Assumes files are in ../data/ relative to the scripts/ directory.
"""
import pandas as pd
import logging
from pathlib import Path

logging.basicConfig(level=logging.INFO, format="%(levelname)s:%(message)s")

DATA_DIR = Path(__file__).resolve().parents[1] / "data"

def read_csv_safe(path, **kwargs):
    path = Path(path)
    if not path.exists():
        logging.error(f"File not found: {path}")
        return None
    logging.info(f"Reading {path} ...")
    try:
        df = pd.read_csv(path, **kwargs)
        logging.info(f"Loaded {len(df)} rows from {path.name}")
        return df
    except Exception as e:
        logging.error(f"Failed to read {path}: {e}")
        raise

def extract_all(event_file="event.csv", item_file="item_category.csv", category_file="category_tree.csv"):
    event_path = DATA_DIR / event_file
    item_path = DATA_DIR / item_file
    category_path = DATA_DIR / category_file

    event_df = read_csv_safe(event_path)
    item_df = read_csv_safe(item_path)
    category_df = read_csv_safe(category_path)

    return event_df, item_df, category_df

if __name__ == "__main__":
    evt, itm, cat = extract_all()
    print("Shapes:", getattr(evt, "shape", None), getattr(itm, "shape", None), getattr(cat, "shape", None))
