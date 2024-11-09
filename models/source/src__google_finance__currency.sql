SELECT
    *
FROM
    {{ source("google_finance", "google_finance_currency")}}
