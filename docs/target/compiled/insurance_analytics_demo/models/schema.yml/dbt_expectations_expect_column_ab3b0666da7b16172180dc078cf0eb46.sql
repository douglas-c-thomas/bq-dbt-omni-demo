with relation_columns as (

        
        select
            cast('CLAIM_ID' as string) as relation_column,
            cast('INT64' as string) as relation_column_type
        union all
        
        select
            cast('MEMBER_ID' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('SERVICE_DATE' as string) as relation_column,
            cast('DATE' as string) as relation_column_type
        union all
        
        select
            cast('PROVIDER' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('SERVICE_CODE' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        union all
        
        select
            cast('AMOUNT_BILLED' as string) as relation_column,
            cast('FLOAT64' as string) as relation_column_type
        union all
        
        select
            cast('AMOUNT_PAID' as string) as relation_column,
            cast('FLOAT64' as string) as relation_column_type
        union all
        
        select
            cast('MEMBER_OUT_OF_POCKET' as string) as relation_column,
            cast('FLOAT64' as string) as relation_column_type
        union all
        
        select
            cast('CLAIM_STATUS' as string) as relation_column,
            cast('STRING' as string) as relation_column_type
        
        
    ),
    test_data as (

        select
            *
        from
            relation_columns
        where
            relation_column = 'AMOUNT_BILLED'
            and
            relation_column_type not in ('FLOAT64')

    )
    select *
    from test_data