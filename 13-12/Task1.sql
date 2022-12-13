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
insert into customers values('Amer','Amora','0789949499','Amer.m.amora@gmail.com','Palestine','irbid','Irbid','55555' );
CREATE TABLE orders (
	order_id INT IDENTITY (1, 1) PRIMARY KEY,
	customer_id INT,
	order_date DATE NOT NULL,
	FOREIGN KEY (customer_id) 
        REFERENCES customers (customer_id) 	
);
insert into orders values(1,'12-13-2022');
CREATE TABLE products (
	product_id INT IDENTITY (1, 1) PRIMARY KEY,
	product_name VARCHAR (255) NOT NULL,
	model_year SMALLINT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	
);
insert into products values('shirt',2022,200);
insert into products values('pants',2021,100);
insert into products values('Accessories',2020,50);
create table product_order(
product_order_id INT IDENTITY (1, 1) PRIMARY KEY,
product_id int,
order_id int,
FOREIGN KEY (product_id) 
        REFERENCES products (product_id) ,
		FOREIGN KEY (order_id) 
        REFERENCES orders (order_id) 
);
insert into product_order values(1,2);
insert into product_order values(2,2);
insert into product_order values(3,2);

select * from product_order;
select product_order.product_id,products.product_name,product_order.order_id
from product_order inner join products on product_order.product_id=products.product_id;
create table Employee(
employeeId int  ,
firstName varchar(50), 
lastName varchar(50), 
dateOfBirth date,
phone int,
email varchar(255),
employeeAddress varchar(255)
);