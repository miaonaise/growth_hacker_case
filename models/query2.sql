WITH austin AS(
    SELECT 
        duration_minutes,
        EXTRACT(YEAR FROM start_time) AS year,
        subscriber_type,
    FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips`
    WHERE EXTRACT(YEAR FROM start_time) >= 2014 AND EXTRACT(YEAR FROM start_time) <= 2020
        AND subscriber_type IS NOT NULL
        AND duration_minutes IS NOT NULL
),

help AS(
    SELECT
        subscriber_type,
        SUM(duration_minutes) AS total_duration_minutes,
        COUNT(1) AS counts,
        year
    FROM austin
    GROUP BY year, subscriber_type
    ORDER BY SUM(duration_minutes) DESC
)

SELECT 
    year,
    subscriber_type AS most_successful_type,
    total_duration_minutes
    counts
FROM help
WHERE total_duration_minutes IN
(
    SELECT MAX(total_duration_minutes)
    FROM help
    GROUP BY year
)
ORDER BY year