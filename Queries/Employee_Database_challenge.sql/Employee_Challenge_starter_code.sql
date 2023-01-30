-- Deliverable 1: Query 1 
SELECT e.emp_no, e.first_name, e.last_name,
t.titles, t.from_date, t.to_date
INTO retirement_titles
FROM Employees as e
INNER JOIN TITLES as t
ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01'and '1955-12-31'
ORDER by E.EMP_No

--Deliverable 1: Query 2
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt. emp_no,
rt. first_name,
rt. last_name,
rt. titles

INTO unique_titles
FROM retirement_titles as rt
WHERE rt. to_date = '9999-01-01'
ORDER BY rt.emp_no, rt. to_date  DESC;


SELECT*  FROM EMPLOYEES

--Deliverable 1: Query 3
SELECT count (titles), titles
into retiring_titles
from unique_titles 
GROUP BY titles
order by count desc


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
