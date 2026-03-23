## Database Recommendation
MySQL vs MongoDB (Conceptual Comparison)
MySQL (Relational | ACID)
MySQL
Strengths:
ACID compliance → Strong consistency
Structured schema → Reliable patient records
Supports complex joins (patient ↔ visits ↔ treatments)
Ideal for OLTP systems
CAP Theorem Position:
Prioritizes Consistency (C) and Availability (A)
Less flexible under partition

MongoDB (NoSQL | BASE)
MongoDB
Strengths:
Flexible schema (good for evolving data)
Handles unstructured data (notes, logs, device data)
High scalability
BASE Properties:
Basically Available
Soft state
Eventually consistent
CAP Theorem Position:
Prioritizes Availability (A) and Partition Tolerance (P)


Choose MySQL as Primary DB

Because:
Patient data must be 100% accurate
Transactions must not fail midway
Regulatory compliance demands strong consistency

Example: Updating diagnosis + prescription must be atomic

What Changes with Fraud Detection?
Fraud detection introduces:
Pattern detection across large datasets
Real-time or near-real-time analytics
Semi-structured data (logs, behavior patterns)

Updated Recommendation (Hybrid Architecture)
Use MySQL for: Patient records
Billing transactions
Appointments

Use MongoDB for:
Behavioral logs
Device data
Fraud signals (patterns, anomalies)

Fraud detection needs scalability + flexibility, not strict ACID

