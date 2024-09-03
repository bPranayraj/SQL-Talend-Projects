Drop database Customers_assignment;

Drop table customers;

Drop table customer_staging;

Truncate table customers;
Truncate table customer_staging;



Create database Customers_assignment;

Use Customers_assignment;
drop table customer_staging;

Create table customers(
       CUSTOMER_DIM_SK INT NOT NULL auto_increment,
       CUSTOMER_ID_BK INT NOT NULL,
       CUSTOMER_FIRST_NAME VARCHAR(45) NULL,
       CUSTOMER_LAST_NAME VARCHAR(45) NULL,
       CUSTOMER_ADDRESS VARCHAR(45),
       PINCODE INT NULL,
       CUSTOMER_DOB DATETIME NULL,
       SCD_START DATETIME NULL,
       SCD_END DATETIME NULL,
       SCD_ACTIVE TINYINT NULL,
       SCD_VERSION INT NULL,
       PRIMARY KEY (CUSTOMER_DIM_SK));
       
 COMMIT;      
 
 select * from customers;
 
 ---------------------------------------- Staging Syntax ------------------------------------------------------------------
 
 Create Table customer_staging(
       CUSTOMER_ID_BK INT NOT NULL,
       CUSTOMER_FIRST_NAME VARCHAR(45) NULL,
       CUSTOMER_LAST_NAME VARCHAR(45) NULL,
       CUSTOMER_ADDRESS VARCHAR(45) NULL,
       PINCODE INT NULL,
       Date DATE NULL,
       CUSTOMER_DOB DATE NULL);
       
select * from customer_staging;
select * from customers;