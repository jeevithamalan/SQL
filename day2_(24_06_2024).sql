salary decimal(10,2)


char -- fixed length

varchar -- variable length up to n characters

text -- 

3.date and time types:

date -- yyyy-NN-DD
time -- HH:MM:SS
datetime -- YYYY-MM-DD HH:MM:SS
timestamp -- current_timestamp
year yyyy


1788-- 


empid,salary,fistname,last name,hiredate


CREATE TABLE Employees (
    EmployeeID   INT PRIMARY KEY,
    FirstName    VARCHAR(50),
    LastName     VARCHAR(50),
    HireDate     DATE,
    Salary       DECIMAL(10, 2)
);


INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (1, 'John', 'Doe', '2021-03-15', 55000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (2, 'Jane', 'Smith', '2020-08-21', 60000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (3, 'Alice', 'Brown', '2019-11-30', 70000.00);

INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES (4, 'Bob', 'Johnson', '2022-01-10', 45000.00);


INSERT INTO Employees (EmployeeID, FirstName, LastName, HireDate, Salary)
VALUES 
    (5, 'Eve', 'Davis', '2018-04-12', 75000.00),
    (6, 'Charlie', 'Miller', '2023-06-25', 50000.00),
    (7, 'Grace', 'Wilson', '2021-07-01', 58000.00);


drop: it will delete the table,index,views and also the table

drop table employees;

truncate -- removes all rows from a table but the table remains

truncate table employees;

-----------------------

alter

department -- column in employee table

ALTER TABLE Employees
ADD Department VARCHAR(50);

DECIMAL(10, 2) -- DECIMAL(12 , 2)     [salary column]

ALTER TABLE Employees
MODIFY Salary DECIMAL(12, 2);

-- Department is not needed

ALTER TABLE Employees
DROP COLUMN Department;


select * from employees;

empid,sal,firstname

SELECT FirstName, EmployeeID, Salary
FROM Employees



salary > 50000

SELECT FirstName, EmployeeID, Salary
FROM Employees
where salary > 50000

SELECT FirstName, EmployeeID, Salary
FROM Employees
order by salary desc;


EmployeeID = 3
sal = 100000

UPDATE Employees
SET Salary = 68000.00
WHERE EmployeeID = 3;

-- update multiple columms
EmployeeID = 3
salary and hiredate

UPDATE Employees
SET Salary = 75000.00, HireDate = '2020-02-14'
WHERE EmployeeID = 3;


delete from employees
where employeeid = 5;


delete from employees


SELECT: Retrieve data from the database.
INSERT: Add new data to the database.
UPDATE: Modify existing data in the database.
DELETE: Remove data from the database.


Comparison operators: =, >, <, >=, <=, <>
Logical operators: AND, OR, NOT
Special operators: IN, BETWEEN, LIKE, IS NULL

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 60000 AND HireDate > '2020-01-01';


select department, avg(salary)
from employees
where
group by department,hiredate
have condition

count,sum,avg,max,min

--------------------
having

WHERE filters rows before aggregation.
HAVING filters aggregated results after grouping.

SELECT FirstName, LastName, Department, Salary
FROM Employees
ORDER BY Department ASC, Salary DESC;

dep -- asc ,sal desc

WHERE: Filters rows before aggregation.
HAVING: Filters rows after aggregation.
GROUP BY: Groups rows for aggregation.
ORDER BY: Sorts the result set.

#where 
1.Where will be used before group by
2.Where will not support aggregate functions
3.Where can be used without group by

#Having
1.Having will be used after group by 
2.Having will support aggregate function
3.Having cannot be used without group by


SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT a.FirstName, a.LastName, b.DepartmentName
FROM Employees a
INNER JOIN Departments b
ON a.DepartmentID = b.DepartmentID;

-------------------------
SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

NNER JOIN: Returns rows where there is a match in both tables.
LEFT JOIN: Returns all rows from the left table and matched rows from the right table; unmatched rows from the right table will be NULL.
RIGHT JOIN: Returns all rows from the right table and matched rows from the left table; unmatched rows from the left table will be NULL.
FULL JOIN: Returns all rows from both tables, with NULL in places where there is no match.

SELECT a.FirstName, a.LastName, b.DepartmentName, c.ProjectName
FROM Employees a
INNER JOIN Departments b 
 ON a.DepartmentID= b.DepartmentID
INNER JOIN Projects c
ON a.EmployeeID = c.EmployeeID;


SELECT Employees.FirstName, Employees.LastName, Departments.DepartmentName, Projects.ProjectName
FROM Employees
INNER JOIN Departments 
ON Employees.DepartmentID = Departments.DepartmentID
LEFT JOIN Projects 
ON Employees.EmployeeID = Projects.EmployeeID;


select * from employees limit 2;


select max(salary)
from employees
where salary < (select max(salary) from employees);

Use RANK() if you need to account for skipped ranks when there are ties.
Use DENSE_RANK() if you want continuous rankings, even when values are tied.


show index from employees;

select sqrt(16) as squareroot;

SELECT ROUND(123.4567, 2) AS RoundedValue;


Use UNION when you need a distinct set of results, and duplicates are not acceptable.
Use UNION ALL when you want to preserve all records, including duplicates, which can also be more efficient in terms of performance.


select emplyeeid,name,salary
rank() over(order by salary desc) as salary rank
from employees;


You are given a 2-D array with dimensions X.
Your task is to perform the min function over axis  
and then find the max of that.
Input Format
The first line of input contains the space separated 
values of  and .
The next  lines contains  space separated integers.
Output Format
Compute the min along axis  and then print the max 
of that result.
Sample Input
4 2
2 5
3 7
1 3
4 0
Sample Output 3





