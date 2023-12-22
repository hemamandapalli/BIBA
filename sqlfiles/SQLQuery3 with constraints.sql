#DEFAULT#
Create table TABLE1(Id int,name varchar(50),Salary int default 15000)
INSERT INTO TABLE1(Id,name) values (1,'hema');
SELECT *FROM TABLE1;
#UNIQUE#
Create table TABLE2(id int unique,name varchar(50),price int unique)
INSERT INTO TABLE2 values (1,'hema',1000),(2,'hema',2000),(3,'hema',3000);
SELECT *FROM TABLE2;
INSERT INTO TABLE2 values (1,'priya',5000);/* gives error for having same idnum(1)*/
#CHECK#
Create table TABLE3(id int, Age int check(Age between 18 and 24))
INSERT INTO TABLE3 values (1,20);
INSERT INTO TABLE3 values (1,17);/*gives error for entering less value than 18*/ 
SELECT *FROM TABLE3;
#PRIMARY KEY#
Create table TABLE4(id int primary key, salary money)
INSERT INTO TABLE4 values (1,400);
#FOREIGN KEY#
Create table employees(id int primary key,name varchar(50),age int)
Create table company(email varchar(50),
address varchar(50),
id int primary key,
foreign key(id) REFERENCES employees(id)
);




