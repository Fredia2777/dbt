{{ config(materialized='table')}}

WITH
base AS (
    SELECT
        *
    FROM
        {{ ref("src__jaffle_shop__orders")}}
)

SELECT
    id AS order_id,
    user_id,
    status AS order_status,
    DATE(order_date) AS order_date
FROM base