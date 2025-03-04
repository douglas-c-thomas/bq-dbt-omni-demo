
    
    

with dbt_test__target as (

  select Claim_ID as unique_field
  from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
  where Claim_ID is not null

)

select
    unique_field,
    count(*) as n_records

from dbt_test__target
group by unique_field
having count(*) > 1


