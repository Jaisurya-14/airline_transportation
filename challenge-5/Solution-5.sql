WITH
    cte_avg_flight_duration AS (
        SELECT
            ac.company_name,
            t.town_from AS departure_city,
            t.town_to AS arrival_city,
            AVG(TIMESTAMPDIFF (MINUTE, t.time_out, t.time_in)) AS avg_flight_duration
        FROM
            Trip t
            JOIN Airline_company ac ON ac.ID_comp = t.ID_comp
        GROUP BY
            ac.company_name,
            t.town_from,
            t.town_to
    ),
    cte_ranked_airlines AS (
        SELECT
            company_name,
            departure_city,
            arrival_city,
            avg_flight_duration,
            RANK() OVER (
                PARTITION BY
                    company_name
                ORDER BY
                    avg_flight_duration DESC
            ) AS `rank`
        FROM
            cte_avg_flight_duration
    )
SELECT
    company_name,
    departure_city,
    arrival_city,
    avg_flight_duration
FROM
    cte_ranked_airlines
WHERE
    `rank` <= 2
ORDER BY
    `rank`;