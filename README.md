# Demo: BigQuery <-> dbt <-> Omni BI


## 📌 Introduction
This repository is a demo project showcasing how synthetic Claims data in **BigQuery** can be transformed by **dbt**
(Data Build Tool) and power **Omni BI** dashboards for Claims analysis. The goal of this demo is to illustrate:
- How to use **dbt for data transformation and modeling**.
- How to implement **data validation and testing**.
- How to **document models** and generate **interactive documentation**.
- How to integrate **Omni BI with BigQuery and dbt to turn data into information and information into knowledge**

This demo is designed for data engineers, analysts, and anyone looking to understand how **Omni BI integrates with BigQuery
via dbt workflows**.

[Claims Data Pipeline Walkthrough Video](https://www.loom.com/share/96d42bb55d5a4cdea5aa5c7921fdc266?sid=4b83815b-5000-47d7-bdca-dfe37c71aab6)

---

## 📂 Repository Structure
The repository is organized as follows:

```
insurance_analytics_project/
│── README.md                       # Project documentation
│── dbt_project.yml                 # dbt project configuration
│── packages.yml                    # dbt package dependencies
│── profiles.yml                    # dbt connection settings (user-specific)
│
├── models/                         # dbt models
│   ├── schema.yml                  # dbt model documentation & tests
│   ├── claims_transformed.sql      # Main dbt transformation model
│
├── tests/                          # Custom dbt tests (if applicable)
│   ├── generic/                    # Generic SQL-based tests
│   ├── test_positive_amounts.sql   # Custom SQL test (currently disabled)
│
├── target/                         # Compiled dbt artifacts (ignored in commits)
│
├── docs/                           # Generated dbt documentation
│
└── logs/                           # dbt run logs
```

---

## ⚙️ **Project Components**
### 🔹 **BigQuery**
- The project runs on **Google BigQuery**, using a dataset named **`insurance_analytics_demo`**.
- The main table used for transformations is **`claims_raw`**.

### 🔹 **dbt Models**
- **`claims_transformed.sql`**:  
  - Transforms raw claims data.
  - Calculates **Member Out-of-Pocket Costs**.
  - Standardizes **claim statuses**.

### 🔹 **Testing & Validation**
- **Schema Tests (`schema.yml`)**:
  - Ensures **Claim_ID is unique**.
  - Verifies **Service_Date is valid**.
  - Confirms **Amount_Billed is a numeric value**.
- **dbt Expectations (`dbt_expectations`)**:
  - Checks that values fall within **expected ranges**.
- **Custom SQL Test (`test_positive_amounts.sql`)** *(currently disabled)*:
  - Would validate **no negative billing amounts**.

---

## 🚀 **How to Run This Project**
### **1️⃣ Set Up Your Environment**
Before running dbt, ensure:
- You have **Python 3.9+** installed.
- You have installed dbt:
  ```sh
  pip install dbt-bigquery
  ```
- You have **Google Cloud SDK** installed and authenticated:
  ```sh
  gcloud auth application-default login
  ```

### **2️⃣ Install dbt Dependencies**
```sh
dbt deps
```

### **3️⃣ Debug Your Connection**
Ensure dbt can connect to BigQuery:
```sh
dbt debug
```

### **4️⃣ Run dbt Models**
```sh
dbt run
```
This will generate the transformed table in BigQuery.

### **5️⃣ Run dbt Tests**
```sh
dbt test
```
This validates data integrity and schema compliance.

### **6️⃣ Generate Documentation**
```sh
dbt docs generate
dbt docs serve
```
Visit the documentation in [GitHub Pages](https://douglas-c-thomas.github.io/bq-dbt-omni-demo/#!/model/model.insurance_analytics_demo.claims_transformed) to explore interactive dbt docs.

---

## 🛠️ **Troubleshooting**
- **Connection Issues?** Run `dbt debug` to verify authentication.
- **Test Failures?** Run `dbt test` to identify failing cases.
- **Need to Rebuild Everything?** Clear cached artifacts:
  ```sh
  dbt clean && dbt deps
  ```

---
