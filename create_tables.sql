CREATE TABLE Province (
    Province_ID INT PRIMARY KEY,
    Province_Name VARCHAR(50),
    Province_Code VARCHAR(10)
);

CREATE TABLE District (
    District_ID INT PRIMARY KEY,
    District_Name VARCHAR(50),
    Province_ID INT,
    FOREIGN KEY (Province_ID)
    REFERENCES Province(Province_ID)
);