
  
    

    create or replace table `dbt-project-451523`.`dbt_project`.`my_second_dbt_model`
      
    
    

    OPTIONS()
    as (
      -- Use the `ref` function to select from other models

select *
from `dbt-project-451523`.`dbt_project`.`my_first_dbt_model`
where id = 1
    );
  