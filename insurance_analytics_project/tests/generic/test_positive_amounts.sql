SELECT * 
FROM {{ ref('claims_transformed') }}
WHERE Amount_Billed < 0 OR Amount_Paid < 0

