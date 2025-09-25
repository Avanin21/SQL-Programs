-- Create Salesman table
CREATE TABLE Salesman 
(SalesmanId INT,
SalesmanName VARCHAR(50),
Commission INT,
City VARCHAR(50),
Age INT)

INSERT INTO Salesman (SalesmanId, SalesmanName, Commission, City, Age) VALUES
(101, 'Joe',    50,  'California', 17),
(102, 'Simon',  75,  'Texas',      25),
(103, 'Jessie', 105, 'Florida',    35),
(104, 'Danny',  100, 'Texas',      22),
(105, 'Lia',    65,  'New Jersy',  30)

SELECT * FROM Salesman

-- Create Customer table
CREATE TABLE Customer
(SalesmanId     INT,
CustomerId     INT,
CustomerName   VARCHAR(50),
PurchaseAmount INT)


INSERT INTO Customer (SalesmanId, CustomerId, CustomerName, PurchaseAmount)
VALUES
(101, 2345, 'Andrew',  550),
(103, 1575, 'Lucky',  4500),
(104, 2345, 'Andrew', 4000),
(107, 3747, 'Remona', 2700),
(110, 4004, 'Julia',  4545)
select * from Customer

-- Create Orders table
CREATE TABLE OrderS
(OrderId     INT ,
CustomerId  INT,
SalesmanId  INT,
OrderDate   DATE,
Amount      INT)

INSERT INTO Orders (OrderId, CustomerId, SalesmanId, OrderDate, Amount) 
VALUES
(5001, 2345, 101, '2021-07-04',  550),
(5003, 1234, 105, '2022-02-15', 1500)
select * from OrderS

--insert a value

insert into OrderS values
(5002, 2536, 103, '2023-09-02', 1000)

--add primary key constraints.
 alter table Salesman alter column salesmanid int not null
 alter table Salesman add constraint pk_salesman_salesmanid primary key (Salesmanid)
 -- default city
 alter table salesman add constraint df_salesman_salesmanid default 'los angles' for city
 --foreign key constraints
alter table customer alter column salesmanid int not null
alter table customer add constraint pk_customer_salesmanid primary key (salesmanid)
select * from Customer
select * from Salesman

insert into Customer values
(102,7654,'texy',2500),
(105,6543,'joy',3000)

insert into Salesman values
(107,'ram',67,'new york',34),
(110,'dev',200,'los angels',43)
alter table customer add constraint fk_customer foreign key (salesmanid) references salesman (salesmanid)
--add not null constraint
alter table Customer alter column Customername VARCHAR (100) NOT NULL
--purchase amount value greater than 500.AND ENDS N 
select * from Customer where Customername like '%N' AND Purchaseamount > 500

--Using SET operators, retrieve the first result with unique SalesmanId values from two tables, 
--and the other result containing SalesmanId with duplicates from two tables.
SELECT SalesmanId FROM Salesman UNION SELECT SalesmanId FROM Customer
SELECT SalesmanId FROM Salesman INTERSECT SELECT SalesmanId FROM Customer
--
select o.orderdate,s.salesmanname,c.customername,s.commission,s.city from salesman as s join orders as o on s.salesmanid=o.SalesmanId join  customer as c on c.SalesmanId=s.SalesmanId
where Amount between 500 and 1500
select* from Customer
select * from orders
select * from salesman
--right join
SELECT * FROM Salesman  RIGHT JOIN Orders  ON salesman.SalesmanID = orders.SalesmanID;