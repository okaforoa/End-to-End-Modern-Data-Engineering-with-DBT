select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from `dbt-project-451523`.`dbt_project`.`customers`
where id is null



      
    ) dbt_internal_test