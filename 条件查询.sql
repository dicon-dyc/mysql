#查询工资>12000的员工信息
SELECT
CONCAT(first_name,last_name) 姓名,
salary
FROM
employees
WHERE
salary > 12000;

#查询部门编号不等于90号的员工名和部门编号
SELECT
CONCAT(first_name,last_name) 姓名,
department_id
FROM
employees
WHERE
department_id<>90;
/*通配符：
	% 任意多个字符，包含0个字符
	_ 任意单个字符
	*/
#查询员工名中包含字符a的员工信息
SELECT
	*
FROM
	employees
WHERE
	last_name LIKE '%a%';
#查询员工名中第三个字符为e，第五个字符为a的员工名字
SELECT
	last_name,
	salary
FROM
	employees
WHERE
	last_name LIKE '__e_a';
#查询员工名中第二个字符为_的员工名
SELECT
	last_name
FROM
	employees
WHERE
	last_name LIKE '_$_%' ESCAPE '$';

SELECT
	last_name
FROM
	employees
WHERE
	last_name LIKE '_\__%';

#查询员工编号在100到120之间的员工信息
SELECT
	*
FROM
	employees
WHERE
	employee_id <= 120 AND employee_id >= 100;

SELECT
	*
FROM
	employees
WHERE
	employee_id BETWEEN 100 AND 120;

#查询员工的工种编号是 IT_PROG、AD_VP、AD_PRES中的一个员工名和工种编号
SELECT
	last_name,
	job_id
FROM
	employees
WHERE
	job_id IN('IT_PROT','AD_PRES','AD_VP');
#查询没有奖金的员工名和奖金率
SELECT
	CONCAT(first_name,last_name) AS 姓名,
	commission_pct
FROM
	employees
WHERE
	commission_pct IS NULL;

SELECT
	CONCAT(first_name,last_name) AS 姓名,
	commission_pct
FROM
	employees
WHERE
	commission_pct <=> NULL;
#查询有奖金的员工名和奖金率
SELECT
	CONCAT(first_name,last_name),
	commission_pct
FROM
	employees
WHERE
	commission_pct IS NOT NULL;

SELECT
	last_name,
	salary
FROM
	employees
WHERE
	salary <=> 12000;