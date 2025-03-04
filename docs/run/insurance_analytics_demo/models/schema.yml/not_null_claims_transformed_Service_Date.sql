select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Service_Date
from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
where Service_Date is null



      
    ) dbt_internal_test