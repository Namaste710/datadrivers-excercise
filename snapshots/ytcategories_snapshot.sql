{% snapshot ytcategories_snapshot %}

    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='id',
          check_cols=['id'],
        )
    }}

    select * from {{ source("ytcategories_bq", "ytcategories_trending") }}

{% endsnapshot %}