WITH
    cte_aircraft_type as (
        SELECT
            CASE
                WHEN plane_type like 'Boeing%' Then 'Boeing'
                ELSE 'Airbus'
            END As aircraft_type,
            AVG(TIMESTAMPDIFF (MINUTE, time_out, time_in)) as avg_flight_duration,
            COUNT(trip_no) as num_flights
        FROM
            Trip
        GROUP BY
            aircraft_type
    )
SELECT
    *
from
    cte_aircraft_type;