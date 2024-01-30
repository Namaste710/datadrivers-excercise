select 
id,
snippet_title
from {{ ref('ytcategories_dbt')}}