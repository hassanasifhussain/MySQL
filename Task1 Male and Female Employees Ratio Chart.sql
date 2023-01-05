SELECT 
    YEAR(from_date) AS calender_year,
    e.gender,
    COUNT(d.emp_no) AS number_of_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON e.emp_no = d.emp_no
GROUP BY calender_year , e.gender
HAVING calender_year >= 1990;