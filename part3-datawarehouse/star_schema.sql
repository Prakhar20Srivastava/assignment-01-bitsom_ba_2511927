-- Enable Foreign Keys in SQLite
PRAGMA foreign_keys = ON;

-- =========================
-- DIMENSION TABLES
-- =========================

CREATE TABLE dim_date (
    date_id INTEGER PRIMARY KEY,
    date_dw TEXT,  -- SQLite stores dates as TEXT (YYYY-MM-DD)
    day INTEGER,
    month INTEGER,
    year INTEGER
);

CREATE TABLE dim_store (
    store_id INTEGER PRIMARY KEY,
    store_name TEXT,
    store_city TEXT
);

CREATE TABLE dim_product (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT
);

-- =========================
-- FACT TABLE
-- =========================

CREATE TABLE fact_sales (
    sales_id INTEGER PRIMARY KEY,
    date_id INTEGER,
    store_id INTEGER,
    product_id INTEGER,
    units_sold INTEGER,
    unit_price REAL,
    total_amount REAL,

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- =========================
-- INSERT INTO DIM_DATE
-- =========================

INSERT INTO dim_date (date_id, date_dw, day, month, year) VALUES
(1, '2023-08-29', 29, 8, 2023),
(2, '2023-12-12', 12, 12, 2023),
(3, '2023-02-05', 5, 2, 2023),
(4, '2023-02-20', 20, 2, 2023),
(5, '2023-01-15', 15, 1, 2023),
(6, '2023-03-10', 10, 3, 2023),
(7, '2023-04-18', 18, 4, 2023),
(8, '2023-05-22', 22, 5, 2023),
(9, '2023-06-30', 30, 6, 2023),
(10, '2023-07-14', 14, 7, 2023);

-- =========================
-- INSERT INTO DIM_STORE
-- =========================

INSERT INTO dim_store (store_id, store_name, store_city) VALUES
(1, 'Chennai Anna', 'Chennai'),
(2, 'Delhi South', 'Delhi'),
(3, 'Mumbai Central', 'Mumbai');

-- =========================
-- INSERT INTO DIM_PRODUCT
-- =========================

INSERT INTO dim_product (product_id, product_name, category) VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mobile Phone', 'Electronics'),
(3, 'Refrigerator', 'Appliances'),
(4, 'Washing Machine', 'Appliances'),
(5, 'Television', 'Electronics');

-- =========================
-- INSERT INTO FACT_SALES
-- =========================

INSERT INTO fact_sales (
    sales_id, date_id, store_id, product_id, units_sold, unit_price, total_amount
) VALUES
(1, 1, 1, 1, 3, 49262.78, 147788.34),
(2, 2, 1, 2, 11, 23226.12, 255487.32),
(3, 3, 1, 3, 20, 48703.39, 974067.80),
(4, 4, 2, 2, 14, 23226.12, 325165.68),
(5, 5, 1, 5, 10, 58851.01, 588510.10),
(6, 6, 3, 1, 5, 50000.00, 250000.00),
(7, 7, 2, 4, 8, 30000.00, 240000.00),
(8, 8, 3, 3, 6, 45000.00, 270000.00),
(9, 9, 1, 2, 12, 22000.00, 264000.00),
(10, 10, 2, 5, 7, 60000.00, 420000.00);

