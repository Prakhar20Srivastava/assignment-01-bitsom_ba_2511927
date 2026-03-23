## Anomaly Analysis

An Insert Anomaly - Customer Name needs to be added, there has to be an order id. without order id, insertion is not allowed
An Update Anomaly - If one Customer email id needs to be modified, we need to modify all records related to that customer
A Delete Anomaly - If we want to delete laptop information, it would delete all the related order details, and with it we lose the records for those order ids


## Normalization Justification

Eliminate Data redundancy: Prevents storing the same data multiple times across
Remove Anomalies
Improve Data Integrity: Maintains accuracy and consistency by ensuring data is logically structured and organized.
Enhance Performance: Smaller, well-structured tables often lead to faster query processing and better database performance.
Simplify Database Design: Makes the database structure easier to manage and maintain over time
