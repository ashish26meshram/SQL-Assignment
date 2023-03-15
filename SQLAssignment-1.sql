Create database Assignment;
use Assignment;
create table salespeople ( 
snum int Primary key,
sname varchar(10) Unique, 
city varchar(10), 
comm int);
INSERT INTO salespeople VALUES (1001 ,'Peel', 'London',12),
(1002 , 'Serres ','Sanjose', 13),
(1004 ,'Motika ','London' ,11),
(1007 ,'Rifkin', 'Barcelona' ,15),
(1003 ,'Axelrod', 'Newyork' ,10);

CREATE TABLE Customers ( cnum int Primary key , 
Cname varchar(10),
city varchar(10) not null, 
Snum int );
ALTER TABLE Customers
ADD FOREIGN KEY (Snum) REFERENCES salespeople(Snum);
INSERT INTO customers VALUES (2001 , 'Hoffman', 'London' ,1001),
(2002 , 'Giovanni', 'Rome' ,1003),
(2003 , 'Liu', 'Sanjose' ,1002),
(2004 , 'Grass' ,'Berlin', 1002),
(2006 ,'Clemens' ,'London', 1001),
(2008 ,'Cisneros' ,'Sanjose', 1007),
(2007 ,'Pereira' ,'Rome' ,1004);

CREATE TABLE orders ( Onum int Primary key,
amt int, 
odate date, 
cnum int, 
snum int );
ALTER TABLE orders
ADD FOREIGN KEY (Snum) REFERENCES salespeople(Snum);
ALTER TABLE orders
ADD FOREIGN KEY (cnum ) REFERENCES Customers(cnum );
INSERT INTO orders VALUES (3001 ,18.69,'1990-10-3', 2008, 1007),
( 3003, 767.19, '1990-10-3', 2001, 1001),
(3002 ,1900.10 ,'1990-10-3', 2007, 1004),
(3005 , 5160.45, '1990-10-3', 2003, 1002),
(3006  ,1098.16, '1990-10-3', 2008, 1007),
(3009 ,1713.23, '1990-10-4', 2002, 1003),
(3007  ,75.75,'1990-10-4', 2004 ,1002),
(3008  ,4273.00, '1990-10-5', 2006, 1001),
(3010  ,1309.95, '1990-10-6', 2004, 1002),
(3011  ,9891.88, '1990-10-6', 2006, 1001);
select *  from salespeople;
select *  from Customers;
select *  from orders;
SELECT Count(*)sname FROM salespeople WHERE sname LIKE 'a%' or sname LIKE 'A%' ;
select * from orders WHERE amt > 2000;
SELECT Count(*)
FROM salespeople
WHERE city='Newyork';
SELECT * FROM salespeople WHERE city='Paris' or city='London';
SELECT Count(*),odate,snum from orders group by odate,snum;

