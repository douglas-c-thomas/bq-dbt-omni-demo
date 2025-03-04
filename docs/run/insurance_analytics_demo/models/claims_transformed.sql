

  create or replace view `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
  OPTIONS()
  as WITH base AS (
    SELECT 
        Claim_ID, 
        Member_ID, 
        Service_Date, 
        Provider, 
        Service_Code, 
        Amount_Billed, 
        Amount_Paid, 
        (Amount_Billed - Amount_Paid) AS Member_Out_Of_Pocket,
        CASE 
            WHEN Status = 'Paid' THEN 'Completed'
            WHEN Status = 'Pending' THEN 'In Progress'
            ELSE 'Rejected'
        END AS Claim_Status
    FROM `bq-dbt-omni-demo.insurance_analytics_demo.claims_raw`
)

SELECT * FROM base;

