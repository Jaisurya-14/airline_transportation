WITH cte_pass_per_trip_count AS (
    SELECT
        ID_psg,
        trip_no,
        COUNT(*) AS trip_count
    FROM 
        Pass_in_trip
    GROUP BY 
        ID_psg, 
        trip_no
),
cte_per_trip_income AS (
    SELECT 
        trip_no,
        TIMESTAMPDIFF(SECOND, time_out, time_in) * 0.01 AS trip_income 
    FROM Trip
),
cte_pass_trip_amount AS (
    SELECT 
        cpp.ID_psg, 
        cpt.trip_no,
        (cpt.trip_income * cpp.trip_count) AS pass_amount
    FROM cte_pass_per_trip_count cpp 
    JOIN cte_per_trip_income cpt 
    ON cpp.trip_no = cpt.trip_no
    ORDER BY cpp.ID_psg, cpp.trip_no
),
cte_pass_income AS (
    SELECT 
        *,
        SUM(pass_amount) OVER(PARTITION BY ID_psg) AS passenger_income_dollars
    FROM cte_pass_trip_amount
),
cte_pass_income_dollars AS (
    SELECT DISTINCT
        ID_psg,
        passenger_income_dollars
    FROM cte_pass_income
    ORDER BY ID_psg
),
cte_pass_total_income AS (
    SELECT
        *,
        SUM(passenger_income_dollars) OVER() AS total_income
    FROM cte_pass_income_dollars
),
cte_pass_share_percent AS (
    SELECT
        cpt.ID_psg,
        p.passenger_name,
        cpt.passenger_income_dollars,
        (cpt.passenger_income_dollars / cpt.total_income) * 100 AS pass_share_percent
    FROM cte_pass_total_income cpt 
    JOIN Passenger p ̰
    ON p.ID_psg = cpt.ID_psg
),
cte_cumulative_share AS (
    SELECT 
        ID_psg,
        passenger_name,
        passenger_income_dollars,
        ROUND(SUM(passenger_income_dollars) OVER(ORDER BY passenger_income_dollars DESC) / 
        SUM(passenger_income_dollars) OVER() * 100,2) AS cumulative_share_percent
    FROM cte_pass_share_percent
)
SELECT *,
    CASE 
        WHEN cumulative_share_percent <= 80.00 THEN 'A'
        WHEN cumulative_share_percent BETWEEN 80.01 AND 95.00 THEN 'B'
        ELSE 'C'
    END AS category
FROM cte_cumulative_share;