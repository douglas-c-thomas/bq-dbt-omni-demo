select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Claim_ID
from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
where Claim_ID is null



      
    ) dbt_internal_test