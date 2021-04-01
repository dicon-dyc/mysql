USE myemployees;

#1.查询各job_id的员工工资的最大值，最小值，平均值，总和，并按job_id升序
SELECT MAX(salary),MIN(salary),AVG(salary),SUM(salary),job_id
FROM employees
GROUP BY job_id
ORDER BY job_id;

#3.查询各个管理者手下员工的最低工资，其中最低工资不能低于6000，没有管理者的员工不计算在内
#“Where” 是一个约束声明，使用Where来约束来之数据库的数据，Where是在结果返回之前起作用的，且Where中不能使用聚合函数。

#“Having”是一个过滤声明，是在查询返回结果集以后对查询结果进行的过滤操作，在Having中可以使用聚合函数。
SELECT MIN(salary),manager_id
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) >= 6000;

#4.查询所有部门的编号，员工数量和工资平均值,并按平均工资降序
SELECT department_id,COUNT(*) 员工数量,AVG(salary) 平均工资
FROM employees
GROUP BY department_id
ORDER BY 平均工资 DESC;

#5.选择具有各个job_id的员工人数
SELECT COUNT(*) 个数, job_id
FROM employees
GROUP BY job_id;



