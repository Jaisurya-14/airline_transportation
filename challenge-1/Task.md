# Updating Passenger Trip Dates

## Overview

As a new data analyst working with the air transportation database, your first task is to clean up and standardize the trip dates. The purpose of this task is to ensure consistency across the dataset, making the data easier to work with and analyze in future stages.

## Objectives

### 1. Alter the Data Type of `trip_date`
- Modify the data type of the `trip_date` column in the **Pass_in_trip** table from `DATETIME` to `DATE`. This adjustment is aimed at ensuring consistency throughout the dataset.

### 2. Update the `trip_date` Values
- After changing the data type, update all existing `trip_date` values to match the new `DATE` format. This means transforming the values from a `DATETIME` format (which includes both date and time) to a `DATE` format that only stores the date.

### 3. Verify the Changes
- Once the updates are completed, retrieve and review all the columns from the **Pass_in_trip** table to verify that the changes were applied correctly to the `trip_date` column.

## Conclusion

By completing these steps, you'll ensure that the trip dates are standardized across the dataset, laying the groundwork for more efficient data analysis and processing in the future.

## Concepts Applied
    Basic DDL and DML operations