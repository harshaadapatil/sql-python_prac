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
