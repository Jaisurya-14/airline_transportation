# Identifying Key Passengers

## Overview

The goal of this task is to identify passengers who frequently fly with specific airline companies. By analyzing flight records, you will pinpoint passengers who have flown multiple times with certain airlines, enabling the airlines to better understand and cater to their loyal customers.

## Objectives

### 1. Combine Passenger and Airline Data
- Combine data from the **Passenger**, **Pass_in_trip**, **Trip**, and **Airline_company** tables to create an overview of frequent flyers with specific airlines.

### 2. Calculate Number of Flights
- For each passenger, calculate the **number of flights** (`num_flights`) they have taken with a specific airline company.
  
### 3. Define Frequent Flyers
- Only passengers who have flown **more than once** (i.e., `num_flights > 1`) with the same airline should be considered frequent flyers.

### 4. SQL Functions and Grouping
- Use the `JOIN` function to accurately combine data from the various tables.
- Use the `GROUP BY` function to group the results by `passenger_name` and `company_name`, ensuring that flights are counted per airline company for each passenger.

### 5. Column Order and Output
- The final output should include the following columns:
  1. `passenger_name` (Passenger's Name)
  2. `num_flights` (Number of Flights with the Specific Airline)
  3. `company_name` (Airline Company Name)

- Ensure that the **column order** is correct in the final output.

## Conclusion

By completing this analysis, you'll be able to identify loyal passengers for each airline, providing valuable insights that can be used to tailor services and improve customer retention.

## Concepts Applied
    1. JOINS
    2. Aggregation