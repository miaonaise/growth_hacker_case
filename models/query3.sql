WITH newyork AS(
    SELECT
        EXTRACT(DATE FROM starttime) AS date,
        2017 - birth_year AS age,
        gender
    FROM `bigquery-public-data.new_york_citibike.citibike_trips`
    WHERE birth_year IS NOT NULL AND gender IS NOT NULL
)

SELECT COUNT(*) AS Riders,gender AS Gender,age AS Age
FROM newyork
WHERE date <= DATE("2017-05-31") AND date >= DATE("2017-05-01")
GROUP BY gender,age
ORDER BY age