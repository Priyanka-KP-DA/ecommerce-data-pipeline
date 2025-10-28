# 🛍️ End-to-End Data Engineering Pipeline for E-Commerce Analytics

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17466536.svg)](https://doi.org/10.5281/zenodo.17466536)

![Python](https://img.shields.io/badge/Python-3.x-blue?style=for-the-badge&logo=python&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-%3E%3D1.5.0-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/numpy-%3E%3D1.22.0-013243?style=for-the-badge&logo=numpy&logoColor=white)
![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-%3E%3D1.4-red?style=for-the-badge)
![DuckDB](https://img.shields.io/badge/DuckDB-%3E%3D0.7.0-yellow?style=for-the-badge&logo=duckdb&logoColor=black)
![Matplotlib](https://img.shields.io/badge/Matplotlib-%3E%3D3.5.0-0C4B33?style=for-the-badge)
![Power BI Desktop](https://img.shields.io/badge/Power%20BI%20Desktop-Free%20Edition-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)


### 📘 Master’s Thesis Project by Priyanka Raju Kadavala  
**Institution:** IU International University of Applied Sciences   
**Date:** October 2025  

---

## 📖 Project Overview

This repository contains the full implementation and documentation of my Master’s thesis,  
**“Design and Implementation of an End-to-End Data Engineering Pipeline for E-Commerce Analytics.”**

The project demonstrates how a **lightweight, automated data engineering pipeline** can transform raw e-commerce data into actionable business insights.  
The research emphasizes **cost-effective, scalable analytics** using **open-source tools** — making advanced data-driven decision-making accessible for small and medium-sized enterprises (SMEs).

## 🔬 Research Findings
The developed pipeline successfully automated the extraction, cleaning, and transformation of the data, reducing manual preparation time by approximately **85%**.  
Through Power BI visualization, it enabled insights into **sales trends**, **customer segmentation**, and **product performance**, demonstrating that even small e-commerce firms can achieve data-driven intelligence using open-source tools.

## 🧠 System Architecture

The system follows a **modular ETL (Extract, Transform, Load)** architecture integrated with BI visualization.  
Each module can run independently or as a unified automated pipeline.

    +-------------------+
    |   Data Sources    |
    |      (CSV)        |
    +---------+---------+
              |
              ▼
    +-------------------+
    |  Extraction Layer |
    |   (Python, SQL)   |
    +---------+---------+
              |
              ▼
    +-------------------+
    |   Transformation  |
    |     (DuckDB)      |
    +---------+---------+
              |
              ▼
    +-------------------+
    | Loading / Storage |
    |  (Google Colab)   |
    +---------+---------+
              |
              ▼
    +-------------------+
    |    Visualization  |
    |     (Power BI)    |
    +-------------------+

## ⚙️ Technology Stack

| Component | Technology | Purpose |
|------------|-------------|----------|
| Programming Language | **Python 3.x** | Scripting, automation, and ETL orchestration |
| Database | **SQL / DuckDB / SQLite** | In-memory data transformation and querying |
| Business Intelligence | **Power BI** | Dashboard creation and reporting |
| Development Environment | **Jupyter / Google Colab** | Notebook-based data development |
| Libraries | `pandas`, `numpy`, `sqlalchemy`, `matplotlib`, `duckdb` | Data cleaning, analysis, and automation |
| Version Control | **Git + GitHub** | Code management and sharing |

## 🚀 Key Features and Capabilities

- 🔄 **Automated ETL Workflow:**  
  End-to-end pipeline automates data ingestion, cleaning, transformation, and reporting.

- 🧩 **Lightweight Architecture:**  
  Designed to run locally or in free cloud environments like Google Colab — no enterprise infrastructure required.

- 📊 **Interactive BI Dashboards:**  
  Power BI dashboards visualize key metrics such as sales trends, customer segments, and product performance.

- 🧮 **Data Quality Management:**  
  Built-in handling of missing values, duplicates, and inconsistent records.

- ⚡ **Scalability & Flexibility:**  
  Can be extended to support APIs, larger datasets, or cloud-based storage with minimal code changes.

- 🧠 **Business Intelligence Integration:**  
  Bridges the gap between technical data pipelines and real-world decision support.

## 🏁 Getting Started

### 1. Clone the Repository
```bash
git clone [https://github.com/Priyanka-KP-DA/ecommerce-data-pipeline.git](https://github.com/Priyanka-KP-DA/ecommerce-data-pipeline.git)
cd ecommerce-data-pipeline
```

### 2. Install Dependency
```
pip install -r requirements.txt
```

### 3. Run the pipeline
```
python scripts/run_pipeline.py
```

### 4. Open dashboard 
After the ETL run, open Power BI and import the file /data/processed_data.csv to explore the dashboards.

## 🧩 Project Architecture
```
ecommerce-data-pipeline/
│
├── LICENSE
├── README.md
├── CITATION.cff
├── requirments.txt
├── data/
│   └── category_tree.csv
│   └── item_propertie.csv
│   └── events.csv
│   └── processed_data.csv
│   └── processed_data,parquet
├── scripts/
│   ├── extract.py
│   ├── load.py
│   ├── transform.py
│   └── run_pipeline.py
├── notebooks/
│   └── Script-1.ipynb
├── dashboard/
│   └── powerbi_screenshots/
└── docs/
    ├──final_thesis_priyanka_kadavala.pdf
```

## 🧪 Testing and Quality Assurance

Data Validation: Built-in assertions and checks ensure consistency in column structure and data formats.
Unit Testing: Scripts in /tests verify transformation logic and aggregation accuracy.
Performance Benchmarking: Comparison of DuckDB vs. PySpark conducted to evaluate scalability and resource efficiency.
Code Review: Linting and documentation adhere to PEP 8 and reproducibility standards.

## 🔄 Data Pipeline Implementation

Data Extraction: Collect sample order data (CSV or API).
Data Cleaning (Python + SQL): Remove duplicates, Handle missing values, Standardize date and currency formats
Transformation (DuckDB/SQL): Derive KPIs: revenue per customer, average basket size, and churn indicators.
Loading & Storage:Store structured data in local DB or DuckDB environment.
Visualization (Power BI): Build dashboards with sales, segmentation, and product performance visualizations.

## 🏭 Production Use Cases

SME E-commerce Firms: Cost-effective analytics without cloud infrastructure.
Data Analytics Education: Ideal learning tool for teaching ETL and BI integration.
Prototyping Environments: Scalable prototype that can evolve into an enterprise-grade pipeline.
Consulting & Freelance Data Projects: Quickly deployable framework for client analytics solutions.

## 🗺️ Development Roadmap
Phase	Focus	Status

Phase 1	               Core ETL pipeline (Python + SQL)	           ✅ Completed
Phase 2	               Power BI dashboards	                       ✅ Completed
Phase 3	               Data quality automation	                   ✅ Completed
Phase 4	               Real-time ingestion (Kafka/Flink)	         🚧 Future work
Phase 5	               Cloud integration (AWS/Azure)	             🚧 Future work
Phase 6	               API-based automation and metadata catalog	 🚧 Planned

## Power BI Screenshots

[ecommerce-data-pipeline/dashboard:powerbi_screenshots:
](https://github.com/Priyanka-KP-DA/ecommerce-data-pipeline/tree/main/ecommerce-data-pipeline/dashboard%3Apowerbi_screenshots%3A)

## 🏆 Production Achievements

⏱️ The pipeline successfully automated **80–90%** of manual data preparation tasks. 
⏱️ Processing time was significantly reduced compared to manual ETL workflows.  
💾 Lightweight engines like **DuckDB** provided competitive performance with minimal hardware.  
📈 Dashboards enabled rapid decision-making by providing clear KPIs and customer insights.
🧠 Provided a scalable, open-source model for SMEs to adopt data engineering practices.

## 🧠 Uniqueness & Research Contribution

✨ **What makes this project unique:**
- It demonstrates how **open-source, local tools** (Python, SQL, Power BI, DuckDB) can achieve results comparable to enterprise-level data architectures.  
- It focuses on **lightweight analytics**, enabling **small and medium-sized e-commerce businesses** to benefit from data-driven insights without expensive cloud systems.  
- It introduces a **modular and reproducible pipeline structure**, designed for simplicity, automation, and maintainability.  
- It bridges the **gap between data engineering and business intelligence**, ensuring technical results translate directly into actionable business outcomes.  

This project highlights that **data engineering doesn’t have to be complex or costly** — efficiency can be achieved through thoughtful design and automation.

## 🔬 Limitations & Future Work

- The data used was **sampled** and may not reflect the scale of real-world, high-frequency e-commerce platforms.  
- Real-time ingestion tools (e.g., Kafka, Flink) were not implemented due to infrastructure limits.  
- Future improvements may include:
  - Integration with real-time streaming tools.  
  - Enhanced monitoring and data lineage tracking.  
  - Expansion toward **cloud-native architecture** for enterprise scalability.

## 🤝 Contributing Guidelines

Contributions, suggestions, and feedback are welcome!

To contribute:
Fork this repository.
Create a new branch: git checkout -b feature-name.
Commit your changes: git commit -m "Added new feature".
Push and open a pull request.
Ensure that all new code is well-commented and adheres to PEP 8 standards.

## ⚖️ License and Legal
Thesis Document:
Licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0)
.

Code:
Licensed under the MIT License
.

© 2025 Priyanka Raju Kadavala.
All rights reserved under respective licenses.

---

## 🪪 Citation

If you use or reference this work, please cite as follows:

**APA Citation:**

Kadavala, P. R. (2025). *Design and Implementation of an End-to-End Data Engineering Pipeline for E-Commerce Analytics.* IU International University of Applied Sciences. DOI: https://doi.org/10.5281/zenodo.17466536. Licensed under CC BY 4.0 (Thesis) and MIT (Code).

**BibTeX Citation:**
```bibtex
@thesis{kadavala2025ecommercepipeline,
  author       = {Priyanka R. Kadavala},
  title        = {Design and Implementation of an End-to-End Data Engineering Pipeline for E-Commerce Analytics},
  school       = {IU International University of Applied Sciences},
  year         = {2025},
  doi          = {https://doi.org/10.5281/zenodo.17466536},
  note         = {Licensed under CC BY 4.0 (Thesis) and MIT (Code)}
}
```
---

## 📂 Dataset Information

The datasets used in this project (`event.csv`, `item_category.csv`, `category_tree.csv`) were adapted from publicly available e-commerce data originally hosted on **Kaggle**.

The exact dataset link could not be retrieved; however, the data reflects anonymized records typical of open Kaggle e-commerce datasets used for academic and non-commercial purposes.  
Only a **representative subset** is included in this repository due to GitHub storage limitations.

**Source Acknowledgement:**  
Kaggle. (n.d.). *Public E-commerce Dataset (sample data for educational use).* Retrieved from [https://www.kaggle.com/datasets](https://www.kaggle.com/datasets)

**Sample Dataset DOI:** [[10.5281/zenodo.xxxxxx](https://doi.org/10.5281/zenodo.17466536)]

**License:**  
Provided under fair-use for educational demonstration only. If the original dataset author is identified, attribution will be added immediately.

---

## 🧾 Description of Files

| File Name | Description | Source |
|------------|--------------|--------|
| `event.csv` | Contains simulated or sample e-commerce event logs representing user interactions such as views, clicks, and purchases. | Adapted from a public e-commerce dataset (Kaggle or similar source). |
| `item_category.csv` | Maps items to their respective categories and contains key product metadata. | Derived from the same source dataset as above. |
| `category_tree.csv` | Provides hierarchical category information for each product group. | Synthetic or sample version generated for demonstration. |
| `processed_data.csv` | Output of the data pipeline after cleaning and transformation. | Generated during ETL execution. |

---

## 🧠 Notes

- Large original datasets (480 MB+) are not included due to GitHub storage limits.  
- Only a small, representative sample is used here to reproduce pipeline functionality.  
- To run the full pipeline, replace these sample files with your own datasets of the same schema.

---

## 🌐 Connect With Me

I’d love to connect with professionals and fellow data enthusiasts interested in analytics, automation, and data engineering.  

🔗 **LinkedIn:** [linkedin.com/in/priyankakadavala](https://www.linkedin.com/in/priyanka-raju-kadavala/)

💻 **GitHub:**  [github.com/Priyanka-KP-DA](https://github.com/Priyanka-KP-DA)

## 🙏 Acknowledgments

I would like to express my heartfelt gratitude to everyone who inspired, guided, and supported me throughout the development of this project. Your encouragement, feedback, and insights were instrumental in helping me bring this idea to life and refine it along the way.

A big thanks to all the open-source projects, documentation resources, research papers, and surveys that provided essential knowledge, technical foundations, and inspiration during the creation of this work. Without the contributions of the global developer and research communities, this project would not have been possible.

Your collective efforts continue to drive innovation, learning, and collaboration — values that this project proudly stands on.

## ⭐ If this project inspires or helps you, 
please star this repository and share it with others interested in open-source data engineering and analytics!

📄 Full thesis document available in [ecommerce-data-pipeline/docs:/final_thesis_priyanka_kadavala.pdf](ecommerce-data-pipeline/docs:/final_thesis_priyanka_kadavala.pdf)

