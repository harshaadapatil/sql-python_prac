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
--511. game play analysis 
SELECT 
 player_id, 
 MIN(event_date) AS first_login 
 FROM Activity 
 GROUP BY player_id;
 
--577.employee bonus 
SELECT e.name, b.bonus 
FROM employee e 
LEFT JOIN Bonus b 
ON e.empid = b.empid 
WHERE b.bonus < 1000 
OR b.bonus IS NULL ; 
_____________________________________________________________________
--584. Find customer referr
SELECT name
FROM customer 
WHERE referee_id != 2
OR referee_id IS NULL;

--586. customer placing the largest numbers of orders
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;
_____________________________________________________________________
--595. big countries
SELECT name, population, area
FROM world
WHERE area >= 3000000
OR population >= 25000000;

--596. classes with atleast 5 students
SELECT class 
FROM courses
GROUP BY class 
HAVING COUNT(*) >= 5;
_____________________________________________________________________
--4. Count employees in each department having more than 5 employees. 
SELECT department_id, COUNT(*) AS num_employees 
FROM employees 
GROUP BY department_id 
HAVING COUNT(*) > 5; 
 
--5. Find employees who joined in the last 6 months. 
SELECT *
FROM employees
WHERE join_date >= CURRENT_TIMESTAMP - INTERVAL '6 months';
 
--6. Get departments with no employees. 
SELECT d.department_name 
FROM departments d 
LEFT JOIN employees e 
ON d.department_id = e.department_id 
WHERE e.id IS NULL;
_____________________________________________________________________
--197. rising temperature
SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

--607. sales person
SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT o.sales_id
    FROM Orders o
    JOIN Company c
    ON o.com_id = c.com_id
    WHERE c.name = 'RED'
);
_____________________________________________________________________
--610. triangle judgement
SELECT x, y, z,
    CASE
        WHEN x + y > z
         AND x + z > y
         AND y + z > x
        THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;

--619. biggest single number 
SELECT MAX(num) AS num
FROM MyNumbers
WHERE num IN (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
);
_____________________________________________________________________
--620. not boring movies
SELECT *
FROM Cinema
WHERE id % 2 = 1
  AND description <> 'boring'
ORDER BY rating DESC;

--627. swap sex of employees 
UPDATE Salary
SET sex = CASE
    WHEN sex = 'f' THEN 'm'
    ELSE 'f'
END;
_____________________________________________________________________
