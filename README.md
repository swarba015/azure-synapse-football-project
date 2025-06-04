# ⚽ Azure Synapse Analytics Project: Premier League Data Analysis

This project demonstrates an end-to-end Azure data analytics pipeline using Premier League match and player data from GitHub. It involves data ingestion, transformation, storage, and SQL-based analytics using Azure services.

---

## 📊 Project Overview

- **Goal**: Analyze match and player data to extract insights such as top referees, shot accuracy, and player position efficiency.
- **Data Source**: [GitHub CSV files](https://github.com/swarba015/azure-synapse-football-project)
- **Tools Used**:
  - SQL
  - PySpark
  - Azure Blob Storage
  - Azure Data Lake
  - Azure Data Factory
  - Azure Databricks
  - Azure Synapse Analystics

---

## 🧱 Architecture

1. **Data Ingestion**: ADF fetches CSVs from GitHub and loads into Azure Data Lake (raw container).
2. **Data Transformation**: Databricks (PySpark) cleans and transforms the data, then saves Parquet files into a transformed container.
3. **Data Analysis**: Azure Synapse connects to Parquet files as external tables using serverless SQL views.
4. **Insight Generation**: SQL queries and visualizations are used to answer key business questions.

---

## 📁 Files

| File/Folder                  | Description |
|-----------------------------|-------------|
| `Create_Schema_Views.sql`          | SQL script to create Synapse schema and views on Parquet files |
| `Questions and Queries.sql`                  | Contains4 SQL scripts answering analytical questions |
| `README.md`                 | Project overview and documentation |

---

## ❓ Analytical Questions Answered

1. **What is the average attendance for matches where total goals were above average?**
2. **Which referee officiated the most matches and what was the average number of fouls?**
3. **Which player position has the highest goal-to-assist ratio?**
4. **How do home and away teams compare in terms of goals, corners, and possession?**



## 🚀 How to Run

1. Clone this repo
2. Set up Azure environment (Data Lake, Synapse, Databricks)
3. Use `Create_Schema_Views.sql` to define views on your parquet files
4. Run individual SQL queries in  `Questions and Queries.sql` on your Synapse environment

---


