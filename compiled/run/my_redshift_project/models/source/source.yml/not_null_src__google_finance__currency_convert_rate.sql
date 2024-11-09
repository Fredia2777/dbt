select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select convert_rate
from "dev"."public"."src__google_finance__currency"
where convert_rate is null



      
    ) dbt_internal_test