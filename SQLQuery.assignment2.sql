--Create a customer table which comprises of these columns: 
--‘customer_id’, ‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’

create table Customer(customer_id INT,
first_name  VARCHAR(50), 
last_name VARCHAR(50) ,
email VARCHAR(100) ,
address VARCHAR(150),
city VARCHAR(50),
state VARCHAR(50),
zip VARCHAR(10))

--Insert 5 new records into the table
insert into customer(customer_id,first_name,last_name,email,address,city,state,zip)
values (1,'slok',  'agni',   'slok.agni@gmail.com',  ' MG Road',      'Bengaluru', 'Karnataka', 560001),
(2,'christ',     'bale',  'chritianbale@gmail.com',    'Park Street',  'Kolkata',   'West Bengal',700016),
(3,'bruce',    'wayne',   'bruce.wayne@mail.com',    ' gowthm city', 'Mumbai',    'Maharashtra',400020),
(4,'ned',    'stark',    'ned.stark@mail.com',     'winterfell',   'chennai',   'Tamil Nadu', 600040),
(5,'arya',   'stark',   'arya.stark@mail.com',   'nobody home',      'Ahmedabad', 'Gujarat',    380009)

--Select only the ‘first_name’ and ‘last_name’ columns from the customer table

select first_name , last_name from Customer

--Select those records where ‘first_name’ starts with “C” and city is ‘KOLKATA'
SELECT * from customer where first_name like 'c%' and city = 'kolkata'


--Select those records where Email has only ‘gmail’.
select * from customer where email LIKE '%@gmail.com'

--Select those records where the ‘last_name’ doesn't end with “A”.
select * from customer where last_name not like '%a'




