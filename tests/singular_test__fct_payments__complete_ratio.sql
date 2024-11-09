{{ config(store_failures = true)}}

WITH 
amount_by_status AS (
    SELECT
        payment_status,
        SUM(amount_usd) AS amount_by_status
    FROM
        {{ ref('fct__jaffle_shop__payments_with_orders') }}
    GROUP BY
        payment_status
),

amount_total AS (
    SELECT
        SUM(amount_usd) AS amount_total
    FROM
        {{ ref('fct__jaffle_shop__payments_with_orders') }}
),

final AS (
    SELECT
        *,
        amount_by_status / (SELECT amount_total FROM amount_total) AS ratio_by_status
    FROM
        amount_by_status
)

SELECT
    *
FROM final
WHERE ratio_by_status > 0
AND payment_status = 'fail'