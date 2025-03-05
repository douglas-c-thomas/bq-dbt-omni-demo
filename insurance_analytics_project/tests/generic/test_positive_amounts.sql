SELECT * 
FROM {{ ref('claims_transformed') }}
WHERE amount_billed < 0 OR amount_paid < 0

