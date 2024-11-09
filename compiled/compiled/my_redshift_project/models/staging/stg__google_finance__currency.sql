

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