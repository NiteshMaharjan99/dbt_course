SELECT r.* FROM {{ ref("fct_reviews") }} r
INNER JOIN {{ ref("dim_listings_cleansed") }} l
ON r.listing_id = l.listing_id
WHERE l.created_at > r.review_date 

-- SELECT * FROM {{ ref('dim_listings_cleansed') }} l 
-- INNER JOIN {{ ref('fct_reviews') }} r
-- USING (listing_id)
-- WHERE l.created_at > r.review_date