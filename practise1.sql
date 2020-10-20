# 查询
# select  *  from   *;

# 2. use employees 采用当前的库

# 3.执行 ：选中当前的查询命令;

# 4.查询表达式;

SELECT 100;
SELECT 'john';

# 查询表达式；
SELECT 100%98;

# 7.起别名；
/*
       易于理解，使用别名区别开来
*/


# for example;

SELECT `first_name`,`last_name`,`email`,`phone_number`,`job_id`,`salary` FROM employees;


#  查询员工涉及到的所有员工部门的编号
#  去重+distinct
SELECT DISTINCT department_id FROM employees;



# +号的作用

# 案例：查询员工名和姓连接成一个字段，并显示为 姓名

 
 SELECT contact('a','b','c') AS out_put;
 
 
 #------------------------------------------------------
 
 # 进阶2：条件查询
 /*
	语法：
		select 
			查询列表
		from   
			表明
		where
			筛选条件；
			
	分类：
		1.安条件表达式筛选
		条件运算符：> < = != <> >= <=
		2.按逻辑表达式筛选
		逻辑运算符：
			&& || ！
			and or not
		3.模糊查询
			like
			between and 
			in 
			is 
			null
 */
 # 按条件查询
 # FX:1.查询工资
 SELECT
	*
FROM
	employees
WHERE	salary>12000;

# FX:2.查询部门编号不等于90号的员工名和各部门编号


SELECT
	last_name,
	department_id
FROM
	employees
WHERE 	
	department_id !=90;
	
# 2.按逻辑表达式筛选

# 案例1：查询工资z在10000到20000之间的员工名，工资以及奖金

SELECT
	last_name,
	salary,
	commission_pct
FROM
	employees
WHERE
	salary>=10000 AND salary <=20000;
	
# 案例2：查询部门编号不是在90到110之间，或者工资高于15000的员工信息
SELECT
	*
FROM
	employees
WHERE
	#dapartment_id>=90 or department_id>=110 or salary>=15000;
	NOT(department_id>=90 AND department_id<=110) OR salary >=15000;
	
#3.模糊查询

/*
like
between and
in
is null|is not null
*/

# 1.查询员工名中包含字符a的员工信息

SELECT
	*
FROM
	employees
WHERE
	last_name LIKE '%a%';#abc
# 2.查询员工名中第三个字符为e,第五个字符为a的员工名和工资
SELECT
	last_name,
	salary
FROM 
	employees
WHERE
	last_name LIKE '__n_1%';
	
# 案例3：查询员工名中第二个字符为——的员工名

SELECT
	last_name
FROM
	employees
WHERE
	last_name LIKE '_$_%' ESCAPE '$';
	
	
#3.员工100到120的值

SELECT
	*
FROM
	employees
WHERE
	employee_id BETWEEN 100 AND 120;
# in
# 案例：查询员工的工种编号是IT_PROT AD_VP AD_PRES中的一个员工名和工种编号

SELECT
	last_name,
	job_id
FROM
	employees
WHERE
	job_id = 'IT_PROT' OR job_id = 'AD_VP' OR JOB_ID = 'AD_PRES'
#---------------------------

# 4. is null

# 案例：查询么有奖金的员工和奖金了概率

/*

*/

SELECT
	last_name,
	commission_pct
FROM
	employees
WHERE
	commission_pct IS  NULL;
#__________________以下为错误写法
SELECT
	last_name,
	commission_pct
FROM
	employees
WHERE
	salary IS 12000;

# 安全等于 <=>


 
 
	
 
 
 
# 4.常见函数
/*
功能：利用于java的方法，将一组逻辑语句封装在方法体中，对外暴露方法名
*/
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 