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
--183. customers who never order 
SELECT c.name AS customers 
FROM customers c 
LEFT JOIN oeders o 
ON c.id = o.customer.id 
WHERE o.id IS NULL ;

--184. department highest salary 
SELECT d.name AS department, e.name AS employee, salary 
FROM employee e 
JOIN department d 
ON e.departmentid = d.id 
WHERE (departmentid, salary) IN(
       SELECT departmentid, MAX(salary) AS salary 
	   FROM employee e 
	   GROUP BY departmentid 
	   );
_____________________________________________________________________
