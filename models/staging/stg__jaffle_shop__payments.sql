{{ config(materialized='table')}}

WITH
base AS (
    SELECT
        *
    FROM
        {{ ref("src__jaffle_shop__payments")}}
)

SELECT
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status AS payment_status,
    currency AS original_currency,
    amount AS original_amount,
    DATE(created) AS payment_date
FROM base