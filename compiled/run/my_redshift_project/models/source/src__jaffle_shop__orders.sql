

  create view "dev"."public"."src__jaffle_shop__orders__dbt_tmp" as (
    SELECT
    *
FROM
    "dev"."public"."jaffle_shop_orders"
  ) ;
