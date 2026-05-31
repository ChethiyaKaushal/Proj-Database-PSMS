create database PSMS;
use psms;

CREATE TABLE Province (
    Province_ID varchar(10) PRIMARY KEY,
    Province_Name VARCHAR(50),
    Province_Code VARCHAR(10)
);

CREATE TABLE District (
    District_ID varchar(10) PRIMARY KEY,
    District_Name VARCHAR(50),
    Province_ID varchar(10),
    FOREIGN KEY (Province_ID)
    REFERENCES Province(Province_ID)
);

CREATE TABLE ATHLETE (
    National_ID VARCHAR(20) NOT NULL,
    Athlete_ID VARCHAR(10) PRIMARY KEY,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,

    Athlete_Name VARCHAR(101)
        GENERATED ALWAYS AS (CONCAT(First_Name, ' ', Last_Name)) STORED,

    REG_No VARCHAR(10) NOT NULL,
    Date_of_Birth DATE,
    Gender VARCHAR(10),
    Age INT,
    Contact_No VARCHAR(15) NOT NULL
);
