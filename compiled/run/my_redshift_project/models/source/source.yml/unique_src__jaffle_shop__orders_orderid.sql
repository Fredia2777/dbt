select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    orderid as unique_field,
    count(*) as n_records

from "dev"."public"."src__jaffle_shop__orders"
where orderid is not null
group by orderid
having count(*) > 1



      
    ) dbt_internal_test