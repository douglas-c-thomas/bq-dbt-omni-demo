select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select Member_ID
from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
where Member_ID is null



      
    ) dbt_internal_test