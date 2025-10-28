"""
load.py
Saves the processed DataFrame to disk in CSV and Parquet formats.
"""
import logging
from pathlib import Path

logging.basicConfig(level=logging.INFO, format="%(levelname)s:%(message)s")

DATA_DIR = Path(__file__).resolve().parents[1] / "data"
OUTPUT_DIR = DATA_DIR

def save_outputs(df, csv_name="processed_data.csv", parquet_name="processed_data.parquet"):
    csv_path = OUTPUT_DIR / csv_name
    parquet_path = OUTPUT_DIR / parquet_name
    logging.info(f"Writing CSV to {csv_path}")
    df.to_csv(csv_path, index=False)
    logging.info(f"Writing Parquet to {parquet_path}")
    try:
        df.to_parquet(parquet_path, index=False)
    except Exception as e:
        logging.warning(f"Parquet write failed: {e} -- you may need pyarrow or fastparquet installed")
    return csv_path, parquet_path

if __name__ == "__main__":
    print("This module provides save_outputs(df) function.")
