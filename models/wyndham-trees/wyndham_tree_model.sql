
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (
    select properties.tree_id as id,
    properties.tree_common as common_name,
    properties.tree_origin as origin,
    properties.structure as structure,
    properties.tree_age as age,
    properties.health as health,
    properties.useful_life_expectancy as useful_life_expectancy,
    properties.diameter_breast_height as diameter_breast_height,
    properties.height,
    properties.canopy_width,
    geometry as location,
    properties.inspection_date
    from wyndham.wyndham_tree_inspections_2017
)
select *
from source_data
where id is not null
