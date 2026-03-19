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

select* from products