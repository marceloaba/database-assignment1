-- Filename: SELECT-DML.sql
-- Description: SELECT statements and JOINS
-- Database: CST8215_310_314
-- Activity: Assignment1 - InventoryII
-- Computer Programmer Spring 2020
-- Student: Marcelo Monteiro da Silva
-- Year:2020

-- 1. Write a SQL statement to list countries that do not have any Customers.
SELECT Country_T.cntry_name AS Country_Name, Customer_T.cust_fname AS Customer_fn, Customer_T.cust_lname AS Customer_ln
FROM Country_T
LEFT JOIN Customer_T
ON Country_T.cntry_code = Customer_T.cust_country
WHERE Customer_T IS NULL
ORDER BY Country_Name;

--2. Write an SQL statement to list countries from which no products are bought
SELECT Country_T.cntry_name AS Country_Name, Product_T.prod_description
FROM Country_T
LEFT JOIN Product_T
ON Country_T.cntry_code = Product_T.cntry_origin
WHERE Product_T IS NULL
ORDER BY Country_Name;


-- eof: SELECT-DML.sql