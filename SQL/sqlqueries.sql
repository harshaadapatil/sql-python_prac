--175. combine two tables
SELECT p.firstname, p.lastname, a.city, a.state
FROM person p 
LEFT JOIN addres a 
ON p.personID = a.personID; 

--176. second highest salary 
SELECT(
    SELECT DISTINCT salary 
	from employee 
	ORDER BY salary DESC 
	LIMIT 1 OFFSET 1
	) AS secondhighestsalary;
_____________________________________________________________________
--181.employees earning more than their managers
SELECT e.name AS employee
FROM employee e 
JOIN employee m 
ON e.managerID = m.ID 
WHERE e.salary > m.salary;

--182. duplicate email 
SELECT email AS Email 
FROM person 
GROUP BY email 
HAVING COUNT (email) > 1;
_____________________________________________________________________
