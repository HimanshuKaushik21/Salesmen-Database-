use Hk

--1.	Write a SQL statement to display all the information of all salesmen
SELECT * FROM Salesmen 


--2.	Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution".  
SELECT 'This is SQL Exercise, Practice And Solution' as display


--3.	Write a query to display three numbers in three columns
SELECT 10,20,30


--4.	Write a query to display the sum of two numbers 10 and 15 from MS SQL.  
SELECT 10+15


--5.	Write a query to display the result of an arithmetic expression
SELECT 10+15-3*2


--6.	Write a SQL statement to display specific columns like name and commission for all the salesmen
SELECT name, commission From salesmen


--7.	Write a query to display the columns in a specific order like order date, Salesmen id, order number and purchase amount from for all the orders.   
SELECT ord_date, salesman_id, Ord_no, purch_amt FROM Orders


--8.	Write a query which will retrieve the value of Salesmen id of all salesmen, getting orders from the customers in orders table without any repeats
select * from orders
SELECT salesman_id FROM orders


--9.	Write a SQL statement to display names and city of Salesmen, who belongs to the city of Paris.
SELECT name, city FROM Salesmen
where city= 'paris'


--10.	Write a SQL statement to display all the information for those customers with a grade of 200.
SELECT *FROM Customer
where grade=200


--11.	Write a SQL query to display the order number followed by order date and the purchase amount for each order which will be delivered by the Salesmen who is holding the ID 5001.
SELECT ord_no, ord_date, purch_amt FROM orders
where salesman_id=5001


--12.	Write a SQL query to display the Nobel prizes for 1970.  
SELECT *FROM NobalPrize
WHERE year =1970


--13.	Write a SQL query to know the winner of the 1971 prize for Literature. 
SELECT WINNER, SUBJECT  FROM NobalPrize
WHERE YEAR = 1971 AND SUBJECT='LITERATURE'


--14.	Write a SQL query to display the year and subject that won 'Dennis Gabor' his prize.
SELECT year, subject from NobalPrize
where winner= 'dennis gabor'


--15.	. Write a SQL query to give the name of the 'Physics' winners since the year 1950.  
SELECT WINNER, SUBJECT FROM NobalPrize
 WHERE YEAR>1950 AND SUBJECT= 'PHYSICS'
 SELECT *FROM NobalPrize
 SELECT WINNER, SUBJECT FROM NobalPrize WHERE YEAR>=1950 AND SUBJECT= 'PHYSICS'


 --16.	Write a SQL query to Show all the details (year, subject, winner, country ) of the Chemistry prize winners between the year 1965 to 1975 inclusive
SELECT YEAR, SUBJECT,WINNER,COUNTRY FROM NobalPrize
WHERE SUBJECT= 'CHEMISTRY' AND YEAR BETWEEN 1965 AND 1975


--17.	Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin
SELECT YEAR, SUBJECT, WINNER, COUNTRY FROM NobalPrize
WHERE CATEGORY='PRIME MINISTER'


--19.	Write a SQL query to show all the details of the winners with first name Louis.
SELECT YEAR, SUBJECT, WINNER, COUNTRY FROM NobalPrize
WHERE WINNER LIKE  'LOUIS%'


--20.	Write a SQL query to show all the winners in Physics for 1970 together with the winner of Economics for 1971.
SELECT WINNER,YEAR,SUBJECT FROM NobalPrize
WHERE SUBJECT= 'PHYSICS' AND YEAR= 1970 OR SUBJECT='ECONOMICS' AND YEAR=1971


--21.	Write a SQL query to show all the winners of nobel prize in the year 1970 except the subject Physiology and Economics
SELECT WINNER,YEAR,SUBJECT FROM NobalPrize
WHERE SUBJECT NOT IN ('PHYSIOLOGY' ,'ECONOMICS') AND YEAR=1970

--22.	Write a SQL query to show the winners of a 'Physiology' prize in an early year before 1971 together with winners of a 'Peace' prize in a later year on and after the 1974. 
SELECT WINNER FROM NobalPrize WHERE (SUBJECT= 'PHYSIOLOGY' AND YEAR<=1971) OR (SUBJECT= 'PEACE' AND YEAR>=1974)

--23.	Write a SQL query to find all details of the prize won by Johannes Georg Bednorz.
SELECT *FROM NobalPrize
WHERE WINNER= 'JOHANNES GEORG BEDNORZ'

--24.	Write a SQL query to find all the details of the nobel winners for the subject not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.
SELECT *FROM NobalPrize
WHERE SUBJECT NOT LIKE 'P%' order by year,WINNER

--25.	Write a SQL query to find all the details of 1970 winners by the ordered to subject and winner name; but the list contain the subject Economics and Chemistry at last
SELECT *FROM NobalPrize
where year= 1970 order by subject desc ,winner



--26.	Write a SQL query to find all the products with a price between Rs.200 and Rs.600
SELECT *FROM Product
WHERE PRO_PRICE BETWEEN 200 AND 600



--27.	Write a SQL query to calculate the average price of all products of the manufacturer which code is 16
SELECT AVG(PRO_PRICE) FROM Product
WHERE PRO_COM=16



--28.	Write a SQL query to find the item name and price in Rs
SELECT PRO_NAME AS 'ITEM' , PRO_PRICE AS 'PRICE IN RS' FROM Product



--29.	Write a SQL query to display the name and price of all the items with a price is equal or more than Rs.250, and the list contain the larger price first and then by name in ascending order
SELECT PRO_NAME, PRO_PRICE FROM Product
WHERE PRO_PRICE>=250 
ORDER BY PRO_PRICE DESC, PRO_NAME


--30.	Write a SQL query to display the average price of the items for each company, showing only the company code
SELECT AVG(PRO_PRICE), PRO_COM FROM Product GROUP BY PRO_COM


--31.	Write a SQL query to find the name and price of the cheapest item.   
SELECT PRO_NAME, PRO_PRICE FROM Product
WHERE PRO_PRICE = (SELECT MIN(PRO_PRICE))


--32.	Write a query in SQL to find the last name of all employees, without duplicate
SELECT distinct EmpName FROM Employee


--33.	Write a query in SQL to find the data of employees whose last name is 'Snares'
SELECT *FROM Employee
WHERE EmpName= 'SNARES'


--34.	Write a query in SQL to display all the data of employees that work in the department 57.
select *from Employee
where EmpName= 57


--35.  Write a query to display all customers with a grade above 100
select *from Customer
where grade>=100


--36.	Write a query statement to display all customers in New York who have a grade value above 100.
select *from Customer
where grade>100 and city= 'new york'


--37.	Write a SQL statement to display all customers, who are either belongs to the city New York or had a grade above 100.  
select *from Customer
where city= 'new york' or  grade>100 


--38.	Write a SQL statement to display all the customers, who are either belongs to the city New York or not had a grade above 100
select *from Customer
where city= 'new york' or not grade>100 


--39.	Write a SQL query to display those customers who are neither belongs to the city New York nor grade value is more than 100
select *from Customer
where not(city= 'new york' or grade>100)



--40.	Write a SQL statement to display either those orders which are not issued on date 2012-09-10 and issued by the Salesmen whose ID is 505 and below or those orders which purchase amount is 1000.00 and below.
select *from Orders
where not((ord_date = '2012-09-10' and salesman_id>5005) or purch_amt>1000)


--41.	Write a SQL statement to display Salesmen_id, name, city and commission who gets the commission within the range more than 0.10% and less than 0.12%.
select *from Salesmen
where (commission>0.10 and commission<0.12) 


--42.	Write a SQL query to display all orders where purchase amount less than 200 or exclude those orders which order date is on or greater than 10th Feb, 2012 and customer id is below 3009
select *from Orders 
where (purch_amt<200 or not(ord_date>='2012-02-10' and customer_id<3009))


--43.	Display all in reverse, where order dates are 2012-08-17 or customer id greater than 3005 and purchase amount is below 1000
select *from Orders
where purch_amt<1000 and(ord_date='2012-08-17' or customer_id>3005)




--44.	Write a SQL query to display order number, purchase amount, archived, the unachieved percentage for those order which exceeds the 50% of the target value of 6000
Select ord_no, purch_amt, round(purch_amt/6000*100,2) 'Achieved %' ,
Round((6000-purch_amt)/6000*100,2) 'Unachieved %'
From Orders
where (100*purch_amt)/6000>50


--45.	Write a query to find those customers with their name and those salesmen with their name and city who lives in the same city
select cust_name, name, Salesmen.city  from Customer , Salesmen
where Salesmen.city = customer.city


--46.	Write a SQL statement to find the names of all customers along with the salesmen who works for them
Select salesmen.name as 'Salesman', customer.cust_name, customer.city from Salesmen,Customer
where Salesmen.city=customer.city 


--47.	Write a SQL statement to display all those orders by the customers not located in the same cities where their salesmen live
select ord_no, cust_name, orders.customer_id, orders.salesman_id
from Salesmen,customer,Orders
where customer.city <> salesmen.city
and Orders.customer_id = customer.customer_id
and orders.salesman_id = salesmen.salesman_id



--48.	Write a SQL statement that finds out each order number followed by the name of the customers who made the order
select orders.ord_no, customer.cust_name 
from Orders,customer
where orders.customer_id = Customer.customer_id


--49.	Write a SQL statement that sorts out the customer and their grade who made an order. Each of the customers must have a grade and served by at least a salesman, who belongs to a city.
select customer.cust_name as 'customer', customer.grade as 'grade', orders.ord_no as 'orderno'
from Orders, Salesmen, Customer
where orders.customer_id = customer.customer_id
and orders.salesman_id=Salesmen.salesman_id
and salesmen.city is not Null
and customer.grade is not Null


--50.	Write a query that produces all customers with their name, city, salesman and commission, who served by a salesman and the salesman works at a rate of the commission within 12% to 14%. 
select customer.cust_name as 'customer', Customer.city as 'city', Salesmen.name as 'salesman', salesmen.commission as 'commission'
from Customer,Salesmen
where Customer.salesman_id = Salesmen.salesman_id
and salesmen.commission
between .12 and .14


--51.	Write a SQL statement that produces all orders with the order number, customer name, commission rate and earned commission amount for those customers who carry their grade more than 200 and served by an existing salesman
select 





--53.	Write a query to display all the orders from the orders table issued by the salesman 'Paul Adam'
SELECT 
*from Orders
WHERE salesman_id=(SELECT salesman_id FROM Salesmen WHERE NAME= 'Paul Adam')


--54.	Write a query to display all the orders for the salesman who belongs to the city London.
select *from Orders
where salesman_id=(select salesman_id from Salesmen where city= 'london')


--55.	Write a query to find all the orders issued against the salesman who works for customer whose id is 3007.
select *from orders
where salesman_id=(select Distinct salesman_id from Orders where customer_id=3007)


--56.	Write a query to display all the orders which values are greater than the average order value for 10th October 2012.
select *from orders
where purch_amt>(select AVG(purch_amt) from Orders where ord_date='10/10/2012')


--57.	Write a query to find all orders attributed to a salesman in New york.
select *from Orders
where salesman_id in(select salesman_id from Salesmen where city ='new york')


--58.	Write a query to display the commission of all the salesmen servicing customers in Paris.
select commission from Salesmen
where salesman_id in (select salesman_id from Customer where city ='paris')


--59.	Write a query to display all the customers whose id is 2001 bellow the salesman ID of Mc Lyon.
select *from Customer
where customer_id=(select salesman_id-2001 from Salesmen where name='mc lyon') 


--60.	Write a query to count the customers with grades above New York's average.
select grade, count(*)
from Customer
group by grade
having grade>(select avg(grade) from Customer where city= 'new york')


--61.	Write a query to display all customers with orders on October 5, 2012.
select *from Customer a,Orders b
where a.customer_id = b.customer_id
and b.ord_date = '2012-10-5'


--62.	Write a query to display all the customers with orders issued on date 17th August, 2012
select b.*, a.cust_name
from Customer a, orders b
where a.customer_id = b.customer_id
and b.ord_date = '2012-8-17'


--63.	Write a query to find the name and numbers of all salesmen who had more than one customer
select 




--64.	Write a query to find all orders with order amounts which are above-average amounts for their customers.
select *from Orders a
where purch_amt>= (select avg(purch_amt) from orders b
where 
