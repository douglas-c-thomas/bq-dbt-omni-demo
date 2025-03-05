






    with grouped_expression as (
    select
        
        
    
  
( 1=1 and service_date >= DATE '1900-01-01' and service_date <= DATE(CURRENT_DATE())
)
 as expression


    from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
    

),
validation_errors as (

    select
        *
    from
        grouped_expression
    where
        not(expression = true)

)

select *
from validation_errors







