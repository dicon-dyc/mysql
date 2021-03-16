USE myemployees;
#查询表中的单个字段
SELECT last_name FROM employees;

#查询表中的多个字段
SELECT
last_name,salary,email
FROM
employees;

#查询表中的所有字段
SELECT 
*
FROM
employees;

#查询常量值
SELECT 100;
SELECT 'john';

#查询表达式
SELECT 100%98;

#查询函数
SELECT VERSION();

#起别名
#方式一
SELECT
100%98 AS 结果;

SELECT 
last_name AS 姓,
first_name AS 名
FROM
employees;
#方式二
SELECT
last_name 姓,
first_name 名
FROM
employees;

#去重
SELECT DISTINCT
department_id
FROM
employees;

#concat
SELECT
CONCAT(last_name,first_name) AS 姓名
FROM
employees;