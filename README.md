# Dhawani-Nanda-data-engineering-assignment-
# E-Commerce Behavior Data Engineering Pipeline

## 1. Overview

This project implements a complete data engineering pipeline using e-commerce behavior data. It includes schema design, ETL pipeline, analytical queries, and performance benchmarking.

## 2. Database Schema Design

A normalized schema (3NF) is used with the following tables:

* Users
* Products
* Categories
* Events (fact table)

Indexes are applied on user_id, product_id, and event_time for better performance.

## 3. ETL Pipeline

* Extract data from CSV files
* Remove duplicates and null values
* Convert timestamps
* Load into database

## 4. Performance Benchmarking

* Data Load Time: ~10 sec
* Batch Throughput: ~50k rows/sec
* Query execution improved after indexing

## 5. Data Quality Checks

* No NULL values in important columns
* No duplicate rows
* Valid timestamps and prices

## 6. Analytical Queries

* Funnel analysis
* Session aggregation
* Top products
* Returning users
* Hourly purchase trends

## 7. Conclusion

This project demonstrates a complete data engineering workflow including schema design, ETL pipeline, and performance optimization.
