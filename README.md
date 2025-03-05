# bq-dbt-omni-demo

## 📌 Introduction
This repository is a **demo project showcasing dbt (Data Build Tool) with BigQuery**. The goal of this demo is to illustrate:
- How to use **dbt for data transformation and modeling**.
- How to implement **data validation and testing**.
- How to **document models** and generate **interactive documentation**.
- How to integrate **dbt workflows into a structured repository**.

This demo is designed for **data engineers, analysts, and anyone looking to understand dbt workflows with BigQuery**.

---

## 📂 Repository Structure
The repository is organized as follows:

```
bq-dbt-omni-demo/
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
Visit `http://localhost:8080/` to explore interactive dbt docs.

---

## 🛠️ **Troubleshooting**
- **Connection Issues?** Run `dbt debug` to verify authentication.
- **Test Failures?** Run `dbt test` to identify failing cases.
- **Need to Rebuild Everything?** Clear cached artifacts:
  ```sh
  dbt clean && dbt deps
  ```

---

## 📌 **Next Steps**
- ✅ Complete model transformations.
- ✅ Implement testing with dbt Expectations.
- 🔲 Fix and re-enable custom SQL test (`test_positive_amounts.sql`).
- 🔲 Deploy docs to **GitHub Pages**.
- 🔲 Integrate dbt with Omni BI.

---

### **📢 Contributions**
This is a demo project, but feel free to **fork and experiment**. If you have suggestions or improvements, open an issue!
