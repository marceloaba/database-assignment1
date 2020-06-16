-- Filename: InventoryII-DML.sql
-- Description: script to populate Inventory Database
-- CST 8215
-- Author: S Terai
-- Year: 2018
-- Last Modified: 13 Jun 2020
-- Modified by: Marcelo Monteiro da Silva
-----------------------------------------
-- Database: CST8215_310_314
-- Activity: Assignment1
-- Computer Programmer Spring 2020
-- Student: Marcelo Monteiro da Silva

-- add at least 6 customers, 
-- use atleast 3 different cities

--Droping Tables
DELETE FROM Invoice_Line_T;
DELETE FROM Product_T;
DELETE FROM Invoice_T;
DELETE FROM Customer_T;
DELETE FROM City_T; -- Added by Marcelo Monteiro (13-06-2020)
DELETE FROM Country_T; -- Added by Marcelo Monteiro (13-06-2020)

-- Add Country data - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('RUS','Russian Federation', 144192450 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('MEX','Mexico', 119530753 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('CAN','Canada', 36155487 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('DZA','Algeria', 40400000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('CHN','China', 1376049000 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('CHL','Chile', 18006407 );
INSERT INTO Country_T( Cntry_Code, Cntry_Name, Cntry_Population )
  VALUES('BRL','Brazil', 210000000 );

-- Add City data - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population)
  VALUES('1', 'Recife', 'BRL', '1555000');
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population)
  VALUES('2', 'Ottawa', 'CAN', '994837');
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population)
  VALUES('3', 'Cancun', 'MEX', '740000');
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population)
  VALUES('4', 'Vladivostok', 'RUS', '598927');
INSERT INTO City_T ( City_ID, City_Name, Cntry_Code, City_Population)
  VALUES('5', 'Hong Kong', 'CHN', '7451000');

-- Add Customer data - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C001', 'Marcelo', 'Monteiro', '111-111-1111', '111 Street', 'Recife', 'PE', '11111', 'BRL', 100 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C002', 'Lennox', 'Bain', '222-222-2222', '2685 Iris St', 'Ottawa', 'ON', 'K2C3S4', 'CAN', 200 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C003', 'Arjan', 'Tyler', '333-333-3333', '333 Manuel Gonzales', 'Cancun', 'CM', 'K33333', 'MEX', 300 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C004', 'John', 'King', '444-444-4444', '444 Av Agamenon', 'Recife', 'PE', 'K44444', 'BRL', 400 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C005', 'Jackie', 'Chan', '555-555-5555', '555 Kwun Tong Rd', 'Hong Kong', 'HK', 'K55555', 'CHN', 500 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance ) 
  VALUES( 'C006', 'Cayson', 'Mosley', '613-727-4723', '1385 Woodroffe Ave' , 'Ottawa', 'ON', 'K2G1V8', 'CAN', 600 );
INSERT INTO Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance ) 
  VALUES( 'C090', 'Raul', 'Vargas', '999-000-9090', '9090 Bermudas Avenue' , 'Chileno', 'CH', 'K90909', 'CHL', 600 );
-- mandatory data for Customer table - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
  VALUES( 'C097', 'Aze', 'Balai', '7-731-707-7243', 'Ulitsa Aleutskaya','Valdivostok', 'VL','VL7SK4', 'RUS', 0 );

-- Add Invocie data
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23001', 'C001', '2011-02-15' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23002', 'C001', '2011-04-25' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23003', 'C004', '2011-06-12' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23004', 'C002', '2011-07-08' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23005', 'C005', '2011-08-24' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23006', 'C006', '2011-09-07' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23007', 'C006', '2010-12-28' );
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I23008', 'C006', '2011-12-15' );
-- mandatory data for Invoice table - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  VALUES( 'I88001', 'C097', '2018-01-15' );

-- Add Product data
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount )
  VALUES( 'P2011', 'CAN', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0 );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2012', 'CHN',  'HP laptop', '2010-09-25', 40, 5, 529.99, 0 );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2013', 'RUS', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0 );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2014', 'BRL', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0 );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2015', 'MEX', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2016', 'CAN', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0 );
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2017', 'CAN', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10 );
-- Add product from Chile - Added by Marcelo Monteiro (16-06-2020)
INSERT INTO Product_T( Prod_Code, Cntry_Origin, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount ) 
  VALUES( 'P2021', 'CHL', 'Logitech Mx Keys', '2011-02-18', 50, 10, 159.99, 0 );
-- mandatory data for Product table - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
  VALUES( 'P2119', 'Organic Chard', '2018-01-14', 240, 100, 'RUS', 15.00, 5 );
INSERT INTO Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min, Cntry_Origin, Prod_Price, Prod_Discount )
  VALUES( 'P2020', 'Organic Collard Green', '2018-01-14', 140, 110, 'RUS', 11.00, 5 );

-- Add Invoice Line Data
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
 VALUES( 'I23001', 1, 'P2011', 1, 650.75 ); 
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23001', 2, 'P2014', 3, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23002', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23003', 1, 'P2015', 3, 140.75 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23004', 1, 'P2014', 1, 159.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23005', 1, 'P2016', 1, 798.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23006', 1, 'P2011', 1, 499.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23007', 1, 'P2012', 1, 529.99 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 1, 'P2016', 3, 689.00 );
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I23008', 2, 'P2017', 3, 35.99 );
-- mandatory data for Invoice_Line Table - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I88001', 1, 'P2119', 3, 15.00 );
-- mandatory data for Invoice_Line Table - Added by Marcelo Monteiro (13-06-2020)
INSERT INTO Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  VALUES( 'I88001', 2, 'P2020', 3, 11.00 );

-- eof: InventoryII-DML.sql