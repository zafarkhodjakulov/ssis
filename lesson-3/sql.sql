--create database lesson3;

create table SalaryFactTable (
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(100),
	Age INT,
	Salary INT
);

INSERT INTO SalaryFactTable
VALUES	('John Smith', 30, 50000),
		('Jane Doe', 28, 60000),
		('Mike Ross', 35, 45000),
		('Rachel Zane', 33, 75000),
		('Donna Paulsen', 40, 85000)


Create table SecondSalaryFactTable (
	ID INT,
	Name NVARCHAR(100),
	Department NVARCHAR(50),
	Salary INT
);

INSERT INTO SecondSalaryFactTable
VALUES	(101, 'Alex Pearson', 'IT', 55000),
		(102, 'Samantha Harvey', 'HR', 67000),
		(103, 'Harvey Specter', 'Legal', 90000),
		(104, 'Louis Litt', 'Legal', 80000),
		(105, 'Sheila Sazs', 'Finance', 60000)


SELECT Avg(salary)
FROM SecondSalaryFactTable
WHERE Salary > (SELECT AVG(Salary) FROM SecondSalaryFactTable)

select format(GETDATE(), 'ddMMyyyy'), salary
from SecondSalaryFactTable