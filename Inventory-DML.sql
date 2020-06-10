SELECT * FROM Customer_T; 
SELECT * FROM Invoice_T; 
SELECT * FROM Product_T; 
SELECT * FROM Invoice_Line_T;

--Exercise 2 Write and test SQL queries

--Query 1
SELECT cust_lname, cust_fname from Customer_T
ORDER BY cust_lname;

--Query 2
SELECT invoice_number, SUBSTRING(cast (invoice_date as text) FROM 1 FOR 4 ) FROM Invoice_T;

--Query 3
SELECT invoice_number, prod_code, line_price from Invoice_Line_T;
--Invoice_Line T

--Query 4
SELECT prod_code, prod_description FROM Product_T;

--Query 5
SELECT cust_lname, cust_fname, cust_city FROM Customer_T
WHERE cust_city != 'Ottawa';

--Query 6
SELECT cust_lname, cust_fname, cust_city FROM Customer_T
WHERE UPPER(cust_city) != 'OTTAWA';

--Exercise 3