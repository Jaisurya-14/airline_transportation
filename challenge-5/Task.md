# Top Routes by Duration for Each Company

## Overview

As part of your ongoing data analysis, the goal of this task is to identify the top two longest routes for each airline company based on the average flight duration. You will analyze flight data and rank routes by their duration, helping to pinpoint which routes are the lengthiest for each airline.

## Objectives

### 1. Retrieve Airline Company and Route Information
- Identify the `company_name` from the **Airline_company** table.
- Retrieve the corresponding `town_from` as `departure_city` and `town_to` as `arrival_city` from the **Trip** table.
- Calculate the **average flight duration** (`avg_flight_duration`) in minutes for each route based on the flight data.

### 2. Rank Routes by Duration
- For each airline company, determine the top two routes with the longest average flight durations. The data should be ranked by `avg_flight_duration` in descending order.
  
### 3. Use SQL Functions
- Use the `JOIN` function to combine data from multiple tables, ensuring that each company’s routes are correctly matched to their average flight durations.
- It is recommended to use `WITH (CTE)` or subqueries with the `ROW_NUMBER()` function to rank the routes and select the top two longest routes for each company.

### 4. Column Order and Output
- The final output should include the following columns:
  1. `company_name` (Airline Company Name)
  2. `departure_city` (City of Departure)
  3. `arrival_city` (City of Arrival)
  4. `avg_flight_duration` (Average Flight Duration in Minutes)

- Ensure that the **column order** is correct, and the output includes only the top two longest routes for each airline company.

## Conclusion

By completing this task, you will have successfully identified the longest routes for each airline company based on average flight duration, providing valuable insights into which routes are the most time-consuming for each airline.


## Concepts Applied
    1. CTE
    2. JOINS
    3. Window functions
    4. Aggregation