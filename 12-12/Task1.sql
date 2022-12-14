CREATE TABLE customers (
	customer_id INT IDENTITY (1, 1) PRIMARY KEY,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5)
);
CREATE TABLE orders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	customer_id INT,
	order_status tinyint NOT NULL,
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
	FOREIGN KEY (customer_id) 
        REFERENCES customers (customer_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
	
);
CREATE TABLE products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	
);
create table product_order(
product_id int,
order_id int,
FOREIGN KEY (product_id) 
        REFERENCES products (product_id) ,
		FOREIGN KEY (order_id) 
        REFERENCES orders (order_id) 
);
create table Employee(
employeeId int  ,
firstName varchar(50), 
lastName varchar(50), 
dateOfBirth date,
phone int,
email varchar(255),
employeeAddress varchar(255)
);