# Airline Data Analysis Project

## Overview

This project focuses on analyzing various aspects of airline operations, including passenger segmentation, route performance, aircraft comparison, and customer loyalty. As a novice data analyst, your goal is to extract valuable insights from the airline database, helping improve efficiency, profitability, and customer satisfaction. By working through these tasks, you'll contribute to optimizing operations, understanding key performance metrics, and identifying areas for improvement in airline services.

## Project Objectives

### 1. **Passenger Segmentation**
- **Goal**: Categorize passengers based on their contribution to total income using ABC analysis.
- **Key Metrics**: Passenger income in dollars, cumulative income share percentage, and passenger categorization (A, B, or C).
- **Outcome**: Identify high-value passengers to optimize marketing strategies and loyalty programs.

### 2. **Updating Passenger Trip Dates**
- **Goal**: Standardize the `trip_date` field by converting it from `DATETIME` to `DATE` for consistency across the dataset.
- **Key Tasks**: Alter the data type, update existing values, and verify changes.
- **Outcome**: Ensure data consistency for easier analysis and processing.

### 3. **Top Routes by Duration for Each Company**
- **Goal**: Identify the top two longest routes for each airline based on average flight duration.
- **Key Metrics**: Average flight duration in minutes.
- **Outcome**: Pinpoint the lengthiest routes for each airline, helping airlines better allocate resources.

### 4. **Boeing vs. Airbus Comparison**
- **Goal**: Compare average flight durations and flight frequencies between Boeing and Airbus aircraft.
- **Key Metrics**: Average flight duration and number of flights for each aircraft type.
- **Outcome**: Understand operational differences between Boeing and Airbus planes.

### 5. **Route Performance Analysis**
- **Goal**: Analyze the efficiency of flight routes by calculating key metrics such as average flight duration, total passengers, and income generated.
- **Key Metrics**: Average flight duration, total passengers, and total income in dollars.
- **Outcome**: Gain insights into route profitability and passenger demand, helping optimize operations.

### 6. **Identifying Key Passengers**
- **Goal**: Identify frequent flyers for specific airline companies to understand customer loyalty.
- **Key Metrics**: Number of flights per passenger with a specific airline.
- **Outcome**: Highlight loyal passengers for targeted services and loyalty programs.

## Technologies & Tools
- SQL (for querying and analyzing the database)
- Airline-related tables: `Passenger`, `Pass_in_trip`, `Trip`, and `Airline_company`
- Database functions: `JOIN`, `GROUP BY`, `ROW_NUMBER()`, `WITH (CTE)`, `CASE`

## Project Workflow
1. **Data Cleaning and Standardization**: Begin by cleaning and organizing date formats and trip data to ensure consistency.
2. **Passenger Segmentation**: Perform ABC analysis to identify high-value passengers for better-targeted marketing.
3. **Route and Flight Analysis**: Analyze the performance of airline routes, aircraft types, and flight durations to optimize operations.
4. **Customer Insights**: Identify frequent flyers and categorize passengers by their loyalty and contribution to revenue.

## Conclusion

By completing these tasks, you will have gained a deeper understanding of airline operations, from route efficiency to customer loyalty. The insights derived from this analysis can help airlines improve profitability, streamline operations, and enhance customer satisfaction.
