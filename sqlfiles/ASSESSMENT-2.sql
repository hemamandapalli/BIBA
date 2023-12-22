CREATE DATABASE Persondetails ;
DELETE Persondetails ;
CREATE TABLE persons (
personid INT,
Firstname varchar(50),
Lastname varchar(50),
city varchar(50)
);
SELECT*from  persons;
ALTER TABLE persons ADD emailid varchar(50);
ALTER TABLE persons  DROP Column city;
ALTER TABLE persons ADD qualification varchar(50);
INSERT INTO persons(personid,Firstname,Lastname,emailid,qualification)VALUES('1','sindu','sree','sindu454@gmail.com','btech');
INSERT INTO persons(personid,Firstname,Lastname,emailid,qualification)VALUES('2','bindu','latha','bindu454@gmail.com','mtech');
INSERT INTO persons(personid,Firstname,Lastname,emailid,qualification)VALUES('3','prudhvi','raj','prudhvi74@gmail.com','btech');
INSERT INTO persons(personid,Firstname,Lastname,emailid,qualification)VALUES('4','nandu','reddy','reddy67@gmail.com','degree');
INSERT INTO persons(personid,Firstname,Lastname,emailid,qualification)VALUES('5','hemanth','reddy','hemanthreddy@gmail.com','mca');
SELECT* from persons;
SELECT* from persons WHERE personid='3';
SELECT firstname,lastname from persons; 
UPDATE persons SET lastname = 'priya' WHERE lastname = 'sree';
DELETE persons WHERE personid=4;

