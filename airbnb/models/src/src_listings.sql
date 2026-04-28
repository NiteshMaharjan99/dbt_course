WITH raw_listings AS (
    -- SELECT * FROM AIRBNB.RAW.RAW_LISTINGS -- direct source table listed
    SELECT * FROM {{ source('airbnb', 'listings') }} -- instead of direct reference to the table we are using sources for abstraction
)

SELECT 
    id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
FROM
    raw_listings