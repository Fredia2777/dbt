{{ config(materialized='table')}}

WITH
payments AS (
    SELECT
        *
    FROM
        {{ ref('stg__jaffle_shop__payments') }}
),

orders AS (
    SELECT
        *
    FROM
        {{ ref('stg__jaffle_shop__orders') }}
),

currency AS (
    SELECT
        *
    FROM
        {{ ref('stg__google_finance__currency') }}
)

SELECT
    o.order_id,
    o.order_status,
    o.order_date,

    p.payment_id,
    p.payment_method,
    p.payment_status,
    p.original_currency,
    p.original_amount,
    (p.original_amount * c.convert_rate) AS amount_usd,
    p.payment_date

FROM payments AS p
LEFT JOIN orders AS o
    ON p.order_id = o.order_id
LEFT JOIN currency AS c
    ON p.original_currency = c.convert_from
    AND p.payment_date = c.convert_date