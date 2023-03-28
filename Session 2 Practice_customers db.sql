CREATE Database customers;
CREATE TABLE customer ( customer_id INT NOT NULL, first_name varchar(50) NOT NULL, last_name varchar(50) NULL, CONSTRAINT pk_customer PRIMARY KEY (customer_id)); 
Select * From customer;
CREATE TABLE orders (order_id INT NOT NULL, email_address VARCHAR(60) NOT NULL, phone_number VARCHAR(10), customer_id INT NOT NULL, PRIMARY KEY (order_id), CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer (customer_id));