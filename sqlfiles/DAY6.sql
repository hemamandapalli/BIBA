-------fectching of duplicate record in the Persons table-----
select*from Persons;
select personid,Firstname,Lastname,emailid,qualification
FROM (
select*,
row_number() over(partition by Firstname order by personid) as rollno
from Persons) RN
where RN.rollno >1;

-----fectching of duplicate record in the Persons table------
select*from Persons;
select personid,Firstname,Lastname,emailid,qualification
FROM (
select*,
row_number() over(partition by Firstname order by personid) as rollno
from Persons) RN
where RN.rollno <2;

CREATE TABLE
SalesList
(SalesMonth NVARCHAR(20), SalesQuartes  VARCHAR(5), SalesYear  SMALLINT, SalesTotal MONEY)
GO
INSERT INTO  SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2019,60)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,50)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'May','Q2',2019,30)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2020,10)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'October','Q4',2019,150)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2019,180)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'November','Q4',2020,120)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'July','Q3',2019,160)
INSERT INTO SalesList(SalesMonth,SalesQuartes,SalesYear,SalesTotal) VALUES (N'March','Q1',2020,170)
GO
SELECT  * FROM SalesList

SELECT  SalesYear, SUM(SalesTotal) AS SalesTotal FROM SalesList
    GROUP BY ROLLUP(SalesYear)

	
SELECT  SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal
    FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)
	
SELECT  SalesYear,SalesQuartes,SalesMonth ,SUM(SalesTotal) AS SalesTotal
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes, SalesMonth)


SELECT SalesYear,SalesQuartes, SUM(SalesTotal) AS SalesTotal ,
GROUPING(SalesQuartes) AS SalesQuarterGrp,
GROUPING(SalesYear) AS SYearGrp
FROM SalesList GROUP BY ROLLUP(SalesYear, SalesQuartes)



SELECT 
CASE 
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=0
THEN 'SubTotal'
WHEN GROUPING(SalesQuartes)=1 AND GROUPING(SalesYear)=1
THEN 
'Grand Total'
ELSE
CAST(SalesYear AS varchar(10))
END 
AS SalesYear,
SalesQuartes,
SUM(SalesTotal) AS SalesTotal 
FROM SalesList
GROUP BY ROLLUP(SalesYear,SalesQuartes)

-----creating procedure-------
CREATE PROCEDURE GetSalesData
AS
BEGIN
    SELECT *
    FROM SalesList;
END;
EXEC GetSalesData;
------- stored procedure-----
CREATE PROCEDURE GetSalesByYear
    @TargetYear SMALLINT
AS
BEGIN
    SELECT *
    FROM SalesList
    WHERE SalesYear = @TargetYear;
END;
EXEC GetSalesByYear @TargetYear = 2019;
-----stored procedure with one parameter---
CREATE PROCEDURE GetSalesByQuarter @TargetQuarter VARCHAR(5)
AS
BEGIN SELECT *FROM SalesList WHERE SalesQuartes = @TargetQuarter;
END;
EXEC GetSalesByQuarter @TargetQuarter = 'Q1';