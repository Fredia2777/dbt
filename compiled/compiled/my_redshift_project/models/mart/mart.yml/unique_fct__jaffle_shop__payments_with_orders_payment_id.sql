
    
    

select
    payment_id as unique_field,
    count(*) as n_records

from "dev"."public"."fct__jaffle_shop__payments_with_orders"
where payment_id is not null
group by payment_id
having count(*) > 1


