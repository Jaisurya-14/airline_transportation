SELECT
    CONCAT (t.town_from, '-', t.town_to) as route,
    AVG(
        TIMESTAMPDIFF (SECOND, t.time_out, t.time_in) / 60
    ) as avg_flight_duration,
    COUNT(pit.ID_psg) as total_passengers,
    SUM(
        TIMESTAMPDIFF (SECOND, t.time_out, t.time_in) / 100
    ) as total_income
FROM
    Trip t
    JOIN Pass_in_trip pit ON t.trip_no = pit.trip_no
GROUP BY
    route
ORDER BY
    total_income DESC;