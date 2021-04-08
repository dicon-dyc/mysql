SHOW DATABASES;
USE myemployees;
SHOW TABLES;
/* 
	外连接用于查询一个表中有另一个表中没有的数据
	*/
#1.查询哪个城市没有部门
SELECT city
FROM departments d
RIGHT OUTER JOIN locations l
ON d.`location_id`=l.`location_id`
WHERE d.`department_id` IS NULL;

#2.查询部门名为SAL或IT的员工信息


#左外连接
SELECT e.*,d.department_name,d.`department_id`
FROM departments d
LEFT JOIN employees e
ON d.`department_id` = e.`department_id`
WHERE d.`department_name` IN('SAL','IT');


#右外连接
SELECT e.*,d.department_name,d.`department_id`
FROM employees e
RIGHT JOIN  departments d
ON e.`department_id` = d.`department_id`
WHERE d.`department_name` IN('SAL','IT');

