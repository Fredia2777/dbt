
  
    

  create  table
    "dev"."public"."stg__google_finance__currency__dbt_tmp"
    
    
    
  as (
    

WITH
base AS (
    SELECT
        *
    FROM
        "dev"."public"."src__google_finance__currency"
)

SELECT
    convert_from,
    convert_to,
    DATE(date) AS convert_date,
    TRY_CAST(convert_rate AS FLOAT) AS convert_rate
FROM base
  );
  