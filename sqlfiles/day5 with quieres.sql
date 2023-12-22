CREATE TABLE student(
  ID INT PRIMARY KEY,
  name VARCHAR(50),
  branch VARCHAR(50),
  city varchar(50)
  );
  INSERT INTO student values (1,'bindu','eee','delhi'),(2,'indu','ece','delhi'),(3,'kriti','ece','delhi');
  SELECT *FROM student;
  CREATE TABLE record(
  ID INT PRIMARY KEY,
  branch VARCHAR(50),
  city varchar(50)
  );
  INSERT INTO record values (4,'eee','delhi'),(5,'ece','delhi'),(6,'ece','delhi');
  select* from record;
  SELECT *FROM student;
----EQUI JOIN------
 SELECT student.name, student.id, record.branch, record.city
FROM student, record
WHERE student.city = record.city;


SELECT student.name, student.id, record.branch, record.city
FROM student
JOIN record
ON student.city = record.city;
-----NON EQUIJOIN----
SELECT student.name, record.id, record.city
FROM student, record
WHERE Student.id < Record.id ;
------subqueires-----
CREATE TABLE stu(
  ID INT PRIMARY KEY,
  name VARCHAR(50),
  rollno int,
  location varchar(50),
  phonenumber int,
  );
  insert into stu values
    (1,'Ram',101,'Chennai',99887755),
    (2,'Raj',102,'Coimbatore',88776655),
    (3,'Sasi',103,'Madurai',77665533),
    (4,'Ravi',104,'Salem',89898989);
	select*from stu;
	insert  into stu values(5,'Sumathi',105,'Kanchipuram',89898568);
	CREATE TABLE stu1(
  name VARCHAR(50),
  rollno int,
  section varchar(50),
  );
  insert into stu1 values
    ('Ravi',104,'A'),('Sumathi',105,'B'),('Raj',102,'A');
	select*from stu1;
	select*from stu;
	select name,location,phonenumber from stu
	where rollno in (select rollno FROM stu1 where section='A')

	CREATE TABLE stu2(
  name VARCHAR(50),
  rollno int,
  section varchar(50),
  );
  insert into stu2 values
    ('preethi',111,'A'),('Sumitra',112,'C'),('Raji',113,'B');
	SELECT*FROM stu2;
	/*combined the stu1 and stu2 table*/
	insert into stu1 select*from stu2;
	/*deleting location who are having chennai from stu table*/
delete from stu
WHERE rollno IN ( SELECT rollno
                   FROM stu
                   WHERE location ='chennai');
-----EXIST------
	  SELECT *
FROM STUDENTS_MARKS sm1
WHERE EXISTS (
    SELECT 1
    FROM STUDENTS_MARKS sm2
    WHERE sm1.STUDENTSID = sm2.STUDENTSID
      AND sm2.MARKS > 500
);/* This query will return all rows from STUDENTS_MARKS where there exists another row for the same student with a score greater than 500.*/

----NOT EXIST------
SELECT DISTINCT*
FROM STUDENTS_MARKS sm1
WHERE NOT EXISTS (
    SELECT 1
    FROM STUDENTS_MARKS sm2
    WHERE sm1.STUDENTSID = sm2.STUDENTSID
      AND sm2.MARKS > 500
);
CREATE TABLE TableA
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
)
GO
INSERT INTO TableA VALUES(1, 'Pranaya', 'Male','IT')
INSERT INTO TableA VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableA VALUES(3, 'Preety', 'Female','HR')
GO
SELECT* FROM TABLEA;
CREATE TABLE TableB
(
ID INT,
Name VARCHAR(50),
Gender VARCHAR(10),
Department VARCHAR(50)
)
GO
INSERT INTO TableB VALUES(2, 'Priyanka', 'Female','IT')
INSERT INTO TableB VALUES(3, 'Preety', 'Female','HR')
INSERT INTO TableB VALUES(4, 'Anurag', 'Male','IT')
GO
SELECT* FROM TABLEA;
SELECT* FROM TABLEB;

SELECT ID, Name, Gender, Department FROM TableA
UNION
SELECT ID, Name, Gender, Department FROM TableB

SELECT ID, Name, Gender, Department FROM TableA
UNION ALL
SELECT ID, Name, Gender, Department FROM TableB

SELECT ID, Name, Gender, Department FROM TableA
INTERSECT
SELECT ID, Name, Gender, Department FROM TableB

