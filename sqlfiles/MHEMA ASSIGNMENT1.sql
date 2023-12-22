create database myself

CREATE TABLE employees (
    employeeid INT PRIMARY KEY,
    firstname VARCHAR(150),
    lastname VARCHAR(150),
    departmentid INT,
    salary DECIMAL(10, 2)
);
INSERT INTO employees VALUES
(1, 'bindu', 'priya', 111, 5000.00),
(2, 'sindu', 'Sree', 112, 6000.00),
(3, 'viswa', 'royal', 111, 5500.00),
(4, 'prudhvi', 'raj', 113, 7000.00);
select* from employees;

CREATE TABLE department (
    departmentid INT PRIMARY KEY,
    departmentname VARCHAR(150)
);
INSERT INTO department VALUES
(111, 'Marketing'),
(112, 'HR'),
(113, 'Finance');

select* from employees;
select *from department;
------left join-----
SELECT employees.employeeid, employees.firstname, employees.lastname, employees.salary, department.departmentname
FROM employees
LEFT JOIN department ON employees.departmentid = department.departmentid;

-------Right join------

SELECT employees.employeeid, employees.firstname, employees.lastname, employees.salary, department.departmentname
FROM employees
RIGHT JOIN department ON employees.departmentid = department.departmentid;

--------FULL JOIN-----
SELECT employees.employeeid, employees.firstname, employees.lastname, employees.salary, department.departmentname
FROM employees
FULL JOIN department ON employees.departmentid = department.departmentid;
-----CROSS JOIN---
SELECT employees.employeeid, employees.firstname, employees.lastname, employees.salary, department.departmentname
FROM employees
CROSS JOIN department

---------SUBQUERY to find employees with a salary greater than the average salary-----
SELECT AVG(salary) FROM employees as avgsalary/*  average salary is 5875*/

SELECT employeeid, firstname, lastname, salary
FROM employees
WHERE salary > (SELECT avg(salary) FROM employees);


----Manipulate data by using sql commands using groupby and having clause-----
SELECT departmentid, departmentname
FROM department
WHERE departmentid IN (SELECT departmentid FROM employees GROUP BY departmentid HAVING COUNT(*) > 1);
                             --------------
SELECT departmentid, AVG(salary) AS average_salary
FROM employees
GROUP BY departmentid;
                             ----------------
SELECT departmentid, AVG(salary) AS average_salary
FROM employees
GROUP BY departmentid
HAVING AVG(salary) > 5500;

---------- updating lastname -----
UPDATE employees
SET lastname = 'sree'
WHERE employeeid = 1;



