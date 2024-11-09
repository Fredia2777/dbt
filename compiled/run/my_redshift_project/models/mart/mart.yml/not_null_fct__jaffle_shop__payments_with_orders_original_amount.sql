select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select original_amount
from "dev"."public"."fct__jaffle_shop__payments_with_orders"
where original_amount is null



      
    ) dbt_internal_test