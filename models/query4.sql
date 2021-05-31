WITH union_data AS(
    SELECT trip_duration, start_date, 'London' AS City
    FROM {{ ref('stg_london') }}
    WHERE start_date >= '2017-05-01' AND start_date <= '2017-05-31'
    UNION ALL
    SELECT trip_duration, start_date, 'Austin' AS City
    FROM {{ ref('stg_austin') }}
    WHERE start_date >= '2017-05-01' AND start_date <= '2017-05-31'
    UNION ALL
    SELECT trip_duration, start_date, 'New York' AS City
    FROM {{ ref('stg_newyork') }}
    WHERE start_date >= '2017-05-01' AND start_date <= '2017-05-31'
)

SELECT City, COUNT(1) AS Number_of_Rides, SUM(trip_duration) AS Total_Duration_Minutes
FROM union_data
GROUP BY City
ORDER BY COUNT(1) DESC