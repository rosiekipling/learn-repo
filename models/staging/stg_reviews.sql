{{
    config(
        materialized='table'
    )
}}

select
listing_id
,comments
,review
,date
,reviewer_name
from
{{ source('airbnb','reviews') }}
