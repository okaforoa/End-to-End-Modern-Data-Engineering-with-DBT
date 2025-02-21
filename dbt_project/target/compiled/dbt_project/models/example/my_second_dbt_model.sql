-- Use the `ref` function to select from other models

select *
from `dbt-project-451523`.`dbt_project`.`my_first_dbt_model`
where id = 1