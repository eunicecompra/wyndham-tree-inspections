
-- Use the `ref` function to select from other models

select *
from {{ ref('wyndham_tree_model') }}
where LOWER(origin) IN ('australia', 'native', 'victoria')
