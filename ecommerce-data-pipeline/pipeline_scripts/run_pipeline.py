"""
run_pipeline.py
Orchestrates the ETL: extract -> transform -> load
Run: python run_pipeline.py
"""
import logging
from pathlib import Path
from pipeline_scripts.extract import extract_all
from pipeline_scripts.transform import merge_data
from pipeline_scripts.load import save_outputs

logging.basicConfig(level=logging.INFO, format="%(levelname)s:%(message)s")

def main():
    logging.info("Starting pipeline...")
    evt, itm, cat = extract_all()
    if evt is None or itm is None:
        logging.error("Required input files missing. Aborting.")
        return
    merged = merge_data(evt, itm, cat)
    csv_path, parquet_path = save_outputs(merged)
    logging.info(f"Pipeline complete. Outputs: {csv_path}, {parquet_path}")

if __name__ == "__main__":
    main()
