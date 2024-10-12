# Boeing vs. Airbus Comparison

## Overview

In this analysis, the goal is to compare the average flight durations and the frequency of flights between Boeing and Airbus aircraft. As a data analyst, you'll gather and analyze flight data to determine whether there's a significant difference in how long and how often these planes are flown across different airline companies.

## Objectives

### 1. Identify Aircraft Type
- Determine the `aircraft_type` (either "Boeing" or "Airbus") based on the `plane_type` recorded in the **Trip** table. 
- For instance, if the `plane_type` is "Boeing 737", the `aircraft_type` will be identified as "Boeing". Similarly, if the `plane_type` is "Airbus A320", the `aircraft_type` will be "Airbus".
  
### 2. Calculate Average Flight Duration and Flight Count
- Calculate the **average flight duration** (`avg_flight_duration`) in minutes for each `aircraft_type` (Boeing or Airbus) based on the flights recorded in the **Trip** table.
- Count the **number of flights** (`num_flights`) for each `aircraft_type` across all recorded flights.

### 3. SQL Functions and Grouping
- Use appropriate SQL functions to extract and process the flight data.
- Ensure that all **Boeing** aircraft types in the `plane_type` column start with the word "Boeing" and all **Airbus** aircraft types start with the word "Airbus".
- Use the `GROUP BY` function to group the results by `aircraft_type`, calculating the average flight duration and the number of flights for each group.

### 4. Column Order and Output
- The final output should include the following columns:
  1. `aircraft_type` (Boeing or Airbus)
  2. `avg_flight_duration` (Average Flight Duration in Minutes)
  3. `num_flights` (Number of Flights)

- Ensure that the **column order** is correct in the final output.

## Conclusion

By completing this comparison, you will gain insights into the differences in flight durations and usage frequency between Boeing and Airbus aircraft, which can help inform future operational and business decisions for airlines.

## Concepts Applied
    1. CTE
    2. Aggregation