

  create or replace view `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
  OPTIONS()
  as WITH base AS (
    SELECT 
        claim_id,
        member_id,
        service_date,
        provider,
        service_code,
        amount_billed,
        amount_paid,
        (amount_billed - amount_paid) as member_out_of_pocket,
        CASE 
            WHEN status = 'Paid' THEN 'Completed'
            WHEN status = 'Pending' THEN 'In Progress'
            ELSE 'Rejected'
        END AS claim_status
    FROM `bq-dbt-omni-demo.insurance_analytics_demo.claims_raw`
)

SELECT * FROM base;

