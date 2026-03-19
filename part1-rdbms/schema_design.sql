 --1.2 — Schema Design

-- products table 

CREATE TABLE products (
product_id VARCHAR PRIMARY KEY ,
product_name VARCHAR (50) NOT NULL ,
category VARCHAR (50) not NULL ,
unit_price INT NOT NULL
) ;

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
('P001', 'Laptop', 'Electronics', 55000),
('P002', 'Mouse', 'Electronics', 800),
('P003', 'Desk Chair', 'Furniture', 8500),
('P004', 'Notebook', 'Stationery', 120),
('P005', 'Headphones', 'Electronics', 3200),
('P006', 'Standing Desk', 'Furniture', 22000),
('P007', 'Pen Set', 'Stationery', 250),
('P008', 'Webcam', 'Electronics', 2100);

--customers table

CREATE TABLE customers (
customer_id VARCHAR PRIMARY KEY ,
customer_name VARCHAR (50) NOT NULL ,
customer_email VARCHAR (80) UNIQUE ,
customer_city VARCHAR (50) NOT NULL
) ;

INSERT INTO customers (customer_id, customer_name, customer_email, customer_city) VALUES
('C002', 'Priya Sharma', 'priya@gmail.com', 'Delhi'),
('C001', 'Rohan Mehta', 'rohan@gmail.com', 'Mumbai'),
('C006', 'Neha Gupta', 'neha@gmail.com', 'Delhi'),
('C003', 'Amit Verma', 'amit@gmail.com', 'Bangalore'),
('C005', 'Vikram Singh', 'vikram@gmail.com', 'Mumbai'),
('C004', 'Sneha Iyer', 'sneha@gmail.com', 'Chennai'),
('C007', 'Arjun Nair', 'arjun@gmail.com', 'Bangalore'),
('C008', 'Kavya Rao', 'kavya@gmail.com', 'Hyderabad');

-- sales rep table

CREATE TABLE sales_rep (
sales_rep_id VARCHAR (10) PRIMARY KEY ,
sales_rep_name VARCHAR (50) NOT NULL ,
sales_rep_email VARCHAR (80) not NULL ,
office_address VARCHAR (100) not NULL
) ;

INSERT INTO sales_rep(sales_rep_id, sales_rep_name, sales_rep_email, office_address) VALUES
('SR02', 'Anita Desai', 'anita@corp.com', 'Delhi Office, Connaught Place, New Delhi - 110001'),
('SR01', 'Deepak Joshi', 'deepak@corp.com', 'Mumbai HQ, Nariman Point, Mumbai - 400021'),
('SR03', 'Ravi Kumar', 'ravi@corp.com', 'South Zone, MG Road, Bangalore - 560001');