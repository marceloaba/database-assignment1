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
SELECT CT.cntry_name AS Country, CT.cntry_code,PT.Prod_code AS PT_Prod_Code, PT.cntry_origin, PT.Prod_Description, ILT.Prod_code AS ILT_Prod_Code, ILT.Invoice_number  
FROM Country_T AS CT
LEFT JOIN Product_T AS PT
ON CT.cntry_code = PT.Cntry_Origin
LEFT JOIN Invoice_line_T AS ILT
ON PT.prod_code = ILT.prod_code
WHERE ILT.prod_code IS NULL;


SELECT * FROM Country_T;

SELECT * FROM City_T;

SELECT * FROM Customer_T;

SELECT * FROM Product_T;

SELECT * FROM Invoice_T;

SELECT * FROM Invoice_Line_T;

SELECT * FROM Countries_V;

SELECT * FROM Countries_prod_V;


-- eof: SELECT-DML.sql