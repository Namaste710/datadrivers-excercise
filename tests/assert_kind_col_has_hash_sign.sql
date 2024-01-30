{{ config(error_if = '!=31', warn_if = '<31') }}

select
*
from {{ source("ytcategories_bq", "ytcategories_trending")}}
where kind like '%#%'
