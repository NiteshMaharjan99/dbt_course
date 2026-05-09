WITH mart_fullmon_reviews AS (
    SELECT * FROM {{ ref('mart_fullmoon_reviews') }}
)

SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) AS reviews
FROM
    mart_fullmon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment