select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "dev"."public_dbt_test__audit"."singular_test__fct_payments__complete_ratio"
    
      
    ) dbt_internal_test