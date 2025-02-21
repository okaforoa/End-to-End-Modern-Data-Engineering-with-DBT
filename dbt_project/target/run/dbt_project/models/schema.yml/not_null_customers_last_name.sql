select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select last_name
from `dbt-project-451523`.`dbt_project`.`customers`
where last_name is null



      
    ) dbt_internal_test