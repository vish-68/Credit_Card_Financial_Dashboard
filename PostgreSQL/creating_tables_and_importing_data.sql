
-- 1. Create cc_detail table
CREATE TABLE cc_details(
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 2. Create cc_detail table
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- before execution of query please change the date format in "credit_card.csv" for "Week_Start_Date" column and set the format as 'YYYY-MM-DD'
-- Update the Datestyle Setting: Set the datestyle explicitly for your session using the following command:
-- Query: SET datestyle TO 'ISO, DMY';


-- copy cc_detail table
COPY cc_details
FROM 'C:\Vish6899\BI_Dashboards\Credit_Card_Financial_Dashboard\Data_and_PostgreSQL\credit_card.csv'
DELIMITER ','
CSV HEADER;

select * from cc_details;

select count(card_category) from cc_details; -- for checking total respondent

-- copy cust_detail table

COPY cust_detail
FROM 'C:\Vish6899\BI_Dashboards\Credit_Card_Financial_Dashboard\Data_and_PostgreSQL\customer.csv'
DELIMITER ','
CSV HEADER;

select * from cust_detail;

select count(gender) from cust_detail;

-- 4. Insert additional data into SQL, using same COPY function

-- copy additional data (week-53) in cc_detail table

COPY cc_details
FROM 'C:\Vish6899\BI_Dashboards\Credit_Card_Financial_Dashboard\Data_and_PostgreSQL\cc_add.csv' 
DELIMITER ',' 
CSV HEADER;


-- copy additional data (week-53) in cust_detail table (remember to update the file name and file location in below query)

COPY cust_detail
FROM 'C:\Vish6899\BI_Dashboards\Credit_Card_Financial_Dashboard\Data_and_PostgreSQL\cust_add.csv' 
DELIMITER ',' 
CSV HEADER;