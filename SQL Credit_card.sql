-- SQL Query to create and import data from csv files:

-- Create a database

CREATE DATABASE ccdb;

-- 1. Create cc_detail table

CREATE TABLE cc_detail(
  Client_Num INT,
  Card_Category VARCHAR(20),
  Annual_Fees INT,
  Activation_30_Days INT,
  Customer_Acq_Cost INT,
  Week_Start_Date DATE,
  Week_Num VARCHAR(20),
  Qtr VARCHAR(20),
  current_year INT,
  Credit_Limit DECIMAL(10,2),
  Total_Revolving_Bal INT,
  Total_Trans_Amt INT,
  Total_Trans_Ct INT,
  Avg_Utilization_Ratio DECIMAL(10,3),
  Use_Chip VARCHAR(10),
  Exp_Type VARCHAR(20),
  Interest_Earned DECIMAL(10,3),
  Delinquent_Acc VARCHAR(20) 
);

-- 2. Create cust_detail table

CREATE TABLE cust_detail (
   Client_Num INT,
   Customer_Age INT,
   Gender VARCHAR(5),
   Dependent_Count INT,
   Education_Level VARCHAR(50),
   Marital_Status VARCHAR(50),
   state_cd VARCHAR(50),
   Zipcode VARCHAR(20),
   Car_Owner VARCHAR(5),
   House_Owner VARCHAR(5),
   Personal_loan VARCHAR(5),
   contact VARCHAR(50),
   Customer_Job VARCHAR(50),
   Income INT,
   Cust_Satisfaction_Score INT
);

-- 3. Copy csv data into SQL

-- copy cc_detail table

COPY cc_detail
FROM 'D:\credit_card.csv'
DELIMITER ','
CSV HEADER;

-- copy cust_detail table

COPY cust_detail
FROM 'D:\customer.csv'
DELIMITER ','
CSV HEADER;

-- 4. Insert  additional data into SQL, using same COPY function

-- copy additional data (week-53) in cc_detail table

COPY cc_detail FROM 'D:\cc_add.csv'
DELIMITER ','
CSV HEADER;

-- copy additional data (week-53) in cust_detail table

COPY cust_detail FROM 'D:\cust_add.csv'
DELIMITER ','
CSV HEADER;

