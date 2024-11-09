

  create view "dev"."public"."src__google_finance__currency__dbt_tmp" as (
    SELECT
    *
FROM
    "dev"."public"."google_finance_currency"
  ) ;
