create table Customer(
customerId int  ,
firstName varchar(50), 
lastName varchar(50), 
dateOfBirth date,
phone int,
email varchar(255),
customerAddress varchar(255)
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
create table Orders(
orderId int  ,
orderName varchar(50), 
orderDate date,
orderStatus varchar(20)
);
create table Products(
productID int  ,
productName varchar(50), 
productDate date,
productStatus varchar(20)
);
alter table Products add price float;