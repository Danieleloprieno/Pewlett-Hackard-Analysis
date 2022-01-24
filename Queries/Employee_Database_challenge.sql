-- Create retirement table
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO del1
INNER JOIN employees as e 
ON titles as t
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Check the table
SELECT * FROM del1;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO ret_titles
FROM del1
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Check the table
SELECT * FROM ret_titles;

-- Retiring count table
SELECT title 
INTO title_count
FROM ret_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

-- Check the table
SELECT * FROM title_count;