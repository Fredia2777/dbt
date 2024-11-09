SELECT
    *
FROM
    {{ source("jaffle_shop", "jaffle_shop_payments")}}
