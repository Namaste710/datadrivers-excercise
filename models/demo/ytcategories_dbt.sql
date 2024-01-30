select 
id, 
snippet_title,
etag,
{{ split_kind_col('kind') }}[0] as source,
{{ split_kind_col('kind') }}[1] as kind,
snippet_assignable, 
snippet_channelId
from {{ source("ytcategories_bq", "ytcategories_trending") }}