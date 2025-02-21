# dbt Project 🚀

This project is a **dbt (Data Build Tool) setup** for transforming and testing data in BigQuery. It follows best practices for modeling, testing, and deploying dbt projects.

## 📌 Project Overview
This repository contains:

- **dbt models** for data transformation.
- **Tests** to ensure data quality.
- **Configurations** for connecting to BigQuery.
- **Macros & Seeds** for reusable SQL logic.

## 📋 Prerequisites
Before setting up the project, ensure you have:

- **Python 3.9+** installed
- **dbt Core** installed (`pip install dbt-bigquery`)
- A **Google Cloud Platform (GCP) project** with BigQuery enabled.
- A **Service Account JSON key** for authentication.

## 🔧 Installation & Setup

### 1️⃣ Clone the Repository
```sh
git clone https://github.com/okaforoa/End-to-End-Modern-Data-Engineering-with-DBT.git
cd End-to-End-Modern-Data-Engineering-with-DBT
```

### 2️⃣ Create a Virtual Environment
```sh
python -m venv .venv
source .venv/bin/activate  # On Mac/Linux
# OR
.venv\Scripts\activate     # On Windows
```

### 3️⃣ Install dbt
```sh
pip install dbt-bigquery
```

### 4️⃣ Configure dbt Profile
Edit `~/.dbt/profiles.yml` (or create it) and set up the BigQuery connection:
```yaml
dbt_project:
  target: dev
  outputs:
    dev:
      type: bigquery
      method: service-account
      keyfile: /path/to/your-key.json
      project: your-gcp-project-id
      dataset: dbt_project
      threads: 1
```

### 5️⃣ Initialize dbt
```sh
dbt init dbt_project
```

## 🚀 Running dbt Commands

### Run All Models
```sh
dbt run
```

### Test Data Quality
```sh
dbt test
```

### View dbt Documentation
```sh
dbt docs generate
dbt docs serve
```

### Debug Connection
```sh
dbt debug
```

## 📁 Project Structure
```
dbt_project/
│-- dbt_project.yml  # dbt project config
│-- logs/
│   ├── dbt.log      # Execution logs
│-- models/          # SQL transformations
│   ├── customers.sql
│   ├── schema.yml
│   ├── example/
│   │   ├── my_first_dbt_model.sql
│   │   ├── my_second_dbt_model.sql
│   │   ├── schema.yml
│-- target/          # Compiled artifacts
│   ├── catalog.json
│   ├── graph.gpickle
```

## 🎯 Best Practices

- Use **version control (Git)** to track changes.
- Define **tests** for critical fields (`unique`, `not_null`).
- Use **macros** for reusable SQL logic.
- Leverage **seeds** for static datasets.

## 📖 Resources

- [dbt Documentation](https://docs.getdbt.com/)
- [dbt Slack Community](https://community.getdbt.com/)
- [BigQuery Setup Guide](https://cloud.google.com/bigquery/docs)

## 🛠️ Author

**Your Name**  
📧 your.email@example.com  
📌 GitHub: [okaforoa](https://github.com/okaforoa)

---

### 🎉 Happy Modeling with dbt! 🚀

