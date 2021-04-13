SHOW DATABASES;
USE myemployees;
SHOW TABLES;

/*
含义：
出现在其他语句中的select语句，称为子查询或内查询
外部的查询语句，称为主查询或外查询

分类：
按子查询出现的位置：
	select后面：
		仅仅支持标量子查询
	
	from后面：
		支持表子查询
	where或having后面：★
		标量子查询（单行） √
		列子查询  （多行） √
		
		行子查询
		
	exists后面（相关子查询）
		表子查询
按结果集的行列数不同：
	标量子查询（结果集只有一行一列）
	列子查询（结果集只有一列多行）
	行子查询（结果集有一行多列）
	表子查询（结果集一般为多行多列）



*/


#一、where或having后面
/*
1、标量子查询（单行子查询）
2、列子查询（多行子查询）

3、行子查询（多列多行）

特点：
①子查询放在小括号内
②子查询一般放在条件的右侧
③标量子查询，一般搭配着单行操作符使用
> < >= <= = <>

列子查询，一般搭配着多行操作符使用
in、any/some、all

④子查询的执行优先于主查询执行，主查询的条件用到了子查询的结果

*/

#谁的工资比Abel高？
SELECT *
FROM employees
WHERE salary>(
	SELECT salary
	FROM employees
	WHERE last_name = 'Abel'
	);

#查询员工的姓名，job_id和工资，要求job_id=‘Abel’并且salary>‘Abel’
SELECT CONCAT(first_name,last_name),job_id,salary
FROM employees
WHERE job_id=(
	SELECT job_id
	FROM employees
	WHERE last_name = 'Abel')
AND salary > (
	SELECT salary
	FROM employees
	WHERE last_name = 'Abel');
	
#查询最低工资大于50号部门最低工资的部门id和其最低工资
SELECT department_id,MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary)>(
	SELECT MIN(salary)
	FROM employees
	WHERE department_id = 50);
	
#查询location_id是1400或1700的部门中的所有员工姓名
SELECT CONCAT(first_name,last_name)
FROM employees
WHERE department_id <>ALL(
	SELECT DISTINCT department_id
	FROM departments
	WHERE location_id IN(1400,1700));


