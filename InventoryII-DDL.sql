-- FileName: InventoryII-DDL.sql
-- Description: Modified script to create InventoryII database, create TABLEs
-- Author: S Terai
-- Year: 2018
-- Last Modified: 13 Jun 2020
-- Modified by: Marcelo Monteiro da Silva
-----------------------------------------
-- Database: CST8215_310_314
-- Activity: Assignment1
-- Computer Programmer Spring 2020
-- Student: Marcelo Monteiro da Silva


DROP TABLE IF EXISTS Invoice_Line_T;
DROP TABLE IF EXISTS Product_T;
DROP TABLE IF EXISTS Invoice_T;
DROP TABLE IF EXISTS Customer_T;
DROP TABLE IF EXISTS City_T; --Add city table
DROP TABLE IF EXISTS Country_T; --Add country table


CREATE TABLE Country_T (
  Cntry_Code          CHAR( 3 ),
  Cntry_Name          VARCHAR( 30 ) NOT NULL,
  Cntry_Population    BIGINT DEFAULT NULL,
  CONSTRAINT PK_Cntry_Code PRIMARY KEY( Cntry_Code )
);

CREATE TABLE City_T (
  City_ID            INTEGER,
  City_Name          VARCHAR( 30 ) NOT NULL,
  Cntry_Code         CHAR( 3 ),
  City_Population    BIGINT DEFAULT NULL,
  CONSTRAINT PK_City_ID PRIMARY KEY( City_ID ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Code ) REFERENCES Country_T( Cntry_Code )
);

CREATE TABLE Customer_T (
  Cust_Id         CHAR( 4 ),
  Cust_Fname      VARCHAR( 30 ) NULL,
  Cust_Lname      VARCHAR( 30 ) NOT NULL,
  Cust_Phone      VARCHAR( 15 ) NOT NULL,
  Cust_Address    VARCHAR( 20 ) NOT NULL,
  Cust_City       VARCHAR( 15 ) NOT NULL,
  Cust_Prov       CHAR( 2 ) NULL,
  Cust_PostCode   CHAR( 6 ) NOT NULL,
  Cust_Country    CHAR( 3 ),
  Cust_Balance    DECIMAL( 9, 2 ), 
  CONSTRAINT PK_Customer PRIMARY KEY( Cust_Id ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cust_Country ) REFERENCES Country_T( Cntry_Code ) --Add country table FK
);

CREATE TABLE Invoice_T (
  Invoice_Number     CHAR( 6 ),
  Cust_Id            CHAR( 4 ) NOT NULL,
  Invoice_Date       DATE DEFAULT NOW(),
  CONSTRAINT PK_Invoice PRIMARY KEY( Invoice_Number ),
  CONSTRAINT FK_Cust_ID FOREIGN KEY( Cust_Id ) REFERENCES Customer_T( Cust_ID )
);

CREATE TABLE Product_T (
  Prod_Code        CHAR( 5 ),
  Cntry_Origin     CHAR( 3 ),
  Prod_Description VARCHAR( 60 ) NOT NULL,
  Prod_Indate      DATE NOT NULL DEFAULT NOW(),
  Prod_QOH         INTEGER NOT NULL,
  Prod_Min         INTEGER,
  Prod_Price       DECIMAL( 5, 2 ) NOT NULL,
  Prod_Discount    INTEGER,
  CONSTRAINT PK_Product PRIMARY KEY( Prod_Code ),
  CONSTRAINT FK_Cntry_Code FOREIGN KEY( Cntry_Origin ) REFERENCES Country_T( Cntry_Code ) --Add country table FK

);

CREATE TABLE Invoice_Line_T (
  Invoice_Number       CHAR( 6 ),
  Invoice_Line         INTEGER,
  Prod_Code CHAR( 5 )  NOT NULL,
  Line_Unit            INTEGER NOT NULL,
  Line_Price           DECIMAL( 9, 2 ) NOT NULL,
  CONSTRAINT PK_Invoice_Line  PRIMARY KEY( Invoice_Number, Invoice_Line ),
  CONSTRAINT FK1_Invoice_Line FOREIGN KEY( Invoice_Number ) REFERENCES Invoice_T( Invoice_Number ),
  CONSTRAINT FK2_Invoice_Line FOREIGN KEY( Prod_Code ) REFERENCES Product_T( Prod_Code )
);

-- eof: InventoryII-DDL.sql