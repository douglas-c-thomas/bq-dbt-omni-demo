
    
    

with dbt_test__target as (

  select claim_id as unique_field
  from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
  where claim_id is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


