
    
    

with all_values as (

    select
        claim_status as value_field,
        count(*) as n_records

    from `bq-dbt-omni-demo`.`insurance_analytics_demo`.`claims_transformed`
    group by claim_status

)

select *
from all_values
where value_field not in (
    'Completed','In Progress','Rejected'
)


