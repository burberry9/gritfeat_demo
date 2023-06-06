{% snapshot scd_raw_listings %}
{{
 config(
 target_schema='dev',
 unique_key='id',
 strategy='timestamp',
 updated_at='updated_at'
 )
}}
select * FROM {{ source('airbnb', 'listings') }}
{% endsnapshot %}