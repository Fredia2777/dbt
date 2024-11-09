
    
    

select
    id as unique_field,
    count(*) as n_records

from "dev"."public"."src__jaffle_shop__customers"
where id is not null
group by id
having count(*) > 1


