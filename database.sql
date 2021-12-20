

use mtx1;

SELECT * FROM PRODUCTTABLE ;

insert into PRODUCTTABLE values(101,'TV','Good ui',55000);

DELETE FROM PRODUCTTABLE WHERE PRODUCTID = 101;

-- -------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------

Select distinct(city) from Customer;

-- -------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------
select distinct count(city) as cn from customer;
-- -------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------

Select * from productTable where cost >=15000;

-- -------------------------------------------------------------------------------------------------------------- ----------------------------------------------------------

select CustomerId, CustomerName, City from Customer where CustomerId in (select CustomerId from  Purchase);

-- ------------------------------------------- ------------------------------------------------------------ ----------------------------------------------------------

select customername, country from customer where country = 'India';

-- ---------------------------------------------------- ----------------------------------------------------------- ----------------------------------------------------------

select customername from customer order by customername ASC;

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

select customername,country  from customer order by customername ASC, country DESC ;

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

insert into customer values (106,null,null,null,123456,null);
select * from customer;

update customer set postalcode = null where customerid = 106;

select * from customer where postalcode is null;
-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

select * from customer where postalcode is not null;

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------
update  productTable set productname = 'Vivo Mobile' where productname = 'Mobile';
-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

update productTable set descriptionProd = 'Vivo is chinese mobile' where productId = 104 and productname = 'Vivo Mobile';

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

delete  from customer where customerid = 106;

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------
truncate table customer;
-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

select productid, productname, cost from ProductTable where cost in (select max(cost) from productTable);

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------
select productid, productname, cost from ProductTable  order by cost desc limit 0,1;

-- ------------------------------------------------------------ ------------------------------------------------------------ ----------------------------------------------------------

select productid, productname from ProductTable order by cost limit 0,1;

-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------

select sum(cost) from productTable;
-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------

ALTER TABLE customer rename COLUMN PostalCode TO Pincode;

-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------
ALTER TABLE Customer
ADD Rating varchar(255);
-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------
delete  from customer where customerid = 5;

rollback;
-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------

select count(productid) ,customerid from purchase group by customerid;
-- ------------------------------------------------------------ ------------------------------------------------------------ -------------------------------------------

 select c.CustomerId,c.CustomerName, p.ProductName, p.cost from customer c, productTable p, purchase ph where c.customerid = ph.customerid;
-- ------------------------------------------------------------ ------------------------------------------------------------ --------------------------------------------


create table Employee ( emp_id int,
Employeename varchar(255),
address varchar(255),
city varchar(255),
state varchar(255),
country varchar(255)
);


create table Department ( emp_id int,
Dept_id int,
Dept_name varchar(255)
);


insert into employee values (1,'Rahul','Paharganj','New Delhi','Delhi','india');
insert into employee values (2,'Rohit','Rewari','Gurugram','Haryana','india');
insert into employee values (3,'Shri','ichalkaranji','Kohlapur','Maharashtra','india');


insert into Department values (1,101,'CSE');
insert into Department values (2,102,'IT');
insert into Department values (3,103,'E&C');



select Employee.employeename, Department.Dept_name from Employee inner join Department on employee.emp_id = Department.emp_id;


insert into Productsequelize values(1,101,'TV','Smart Tv',40000);
insert into Productsequelize values(2,102,'Mobile','Smart Tv',30000);
insert into Productsequelize values(3,103,'AC','Smart Tv',50000);
insert into Productsequelize values(4,104,'Laptop','Smart Tv',60000);



create database imp;

use imp;


CREATE TABLE Customer(
   ID int NOT NULL,
   Name_Customer varchar(50),
   Location varchar(50),
   PRIMARY KEY (ID)
   );
  
   CREATE TABLE Product(
    ProductNumber int NOT NULL,
    ProductDescription varchar (50),
   Cost int,
   ID int,
   PRIMARY KEY (ProductNumber),
   FOREIGN KEY (ID) REFERENCES Customer1 (ID)
   );
  
   
   INSERT INTO Customer1 VALUE(1,'Rahul Kumar','Delhi');
   INSERT INTO Customer1 VALUE(2,'Rohit','Haryana');
   INSERT INTO Customer1 VALUE(3,'Shree','kolhapur');
  
   INSERT INTO ProductOrders VALUE(101,'TV',20000,1);
   INSERT INTO ProductOrders VALUE(102,'AC',40000,1);
   INSERT INTO ProductOrders VALUE(103,'Laptop',50000,1);
  
   SELECT c1.Name_Customer,c2.ProductDescription FROM Customer1 c1, ProductOrders c2 WHERE  c1.ID=c2.ID;



-- create table Customers(CustomerID int primary key,CustName varchar(200),location varchar(50));
-- insert into Customers values(101,"Kumar","Delhi");
-- insert into Customers values(102,"Shree","Kolhapur");
-- insert into Customers values(103,"Himanshu","Rajsthan");
-- insert into Customers values(104,"Rutuja","Pune");

-- select * from Customers;


-- create table Products(
-- FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID), 
-- CustomerID int, 
-- ProductNumber int primary key ,
-- ProductName varchar(100),
-- cost int);

-- insert into Products values(101, 738343,"Mobile",13400);
-- insert into Products values(102, 6545,"Laptop",15400);
-- insert into Products values(103, 738356543,"MacBook",103430);
-- insert into Products values(104, 56,"AC",143400);


--    SELECT C1.CustName  , C2.ProductName FROM Customers C1 , Products  C2 WHERE  C1.CustomerID=C2.CustomeID;

select *from Products;


