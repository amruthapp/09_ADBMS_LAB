show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| linuxdb            |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.11 sec)



Database changed
mysql> create database company;
Query OK, 1 row affected (0.12 sec)

mysql> use company;
Database changed
mysql> create table employee( emp_no int not null,emp_name varchar(50) not null,address varchar(70) not null,sex varchar(10) not null,dept varchar(20) not null,salary int not null,doj date not null,branch varchar(20) not null);
Query OK, 0 rows affected (0.49 sec)

mysql> describe employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_no   | int         | NO   |     | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| address  | varchar(70) | NO   |     | NULL    |       |
| sex      | varchar(10) | NO   |     | NULL    |       |
| dept     | varchar(20) | NO   |     | NULL    |       |
| salary   | int         | NO   |     | NULL    |       |
| doj      | date        | NO   |     | NULL    |       |
| branch   | varchar(20) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.55 sec)


mysql> create table employee( emp_no int not null,emp_name varchar(50) not null,address varchar(70) not null,sex varchar(10) not null,dept varchar(20) not null,salary int not null,doj date not null,branch varchar(20) not null primary key(emp_id));

mysql> alter table employee add primary key(emp_no);
Query OK, 0 rows affected (2.67 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_no   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| address  | varchar(70) | NO   |     | NULL    |       |
| sex      | varchar(10) | NO   |     | NULL    |       |
| dept     | varchar(20) | NO   |     | NULL    |       |
| salary   | int         | NO   |     | NULL    |       |
| doj      | date        | NO   |     | NULL    |       |
| branch   | varchar(20) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.01 sec)


mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(101,'anu','tly','f','IT',15000,'2018-09-09','CS');
Query OK, 1 row affected (0.06 sec)

mysql> describe employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_no   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(50) | NO   |     | NULL    |       |
| address  | varchar(70) | NO   |     | NULL    |       |
| sex      | varchar(10) | NO   |     | NULL    |       |
| dept     | varchar(20) | NO   |     | NULL    |       |
| salary   | int         | NO   |     | NULL    |       |
| doj      | date        | NO   |     | NULL    |       |
| branch   | varchar(20) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(102,'suganya','kannur','others','REVENUE',17000,'2019-09-01','COM');
Query OK, 1 row affected (0.12 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(103,'Aneya','Trivandrum','m','IT',27000,'2013-09-05','Cs');
Query OK, 1 row affected (0.07 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(104,'abhin','kochi','f','Sales',3000,'2003-10-08','Sales');
Query OK, 1 row affected (0.09 sec)

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+--------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch |
+--------+----------+------------+--------+---------+--------+------------+--------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS     |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM    |
|    103 | Aneya    | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs     |
|    104 | abhin    | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales  |
+--------+----------+------------+--------+---------+--------+------------+--------+
4 rows in set (0.01 sec)

mysql> update employee set emp_name='sajith' where emp_no=103;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+--------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch |
+--------+----------+------------+--------+---------+--------+------------+--------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS     |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM    |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs     |
|    104 | abhin    | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales  |
+--------+----------+------------+--------+---------+--------+------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee where emp_no=104;
Query OK, 1 row affected (0.11 sec)

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+--------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch |
+--------+----------+------------+--------+---------+--------+------------+--------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS     |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM    |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs     |
+--------+----------+------------+--------+---------+--------+------------+--------+
3 rows in set (0.00 sec)

mysql> select distinct emp_no,salary from employee;
+--------+--------+
| emp_no | salary |
+--------+--------+
|    101 |  15000 |
|    102 |  17000 |
|    103 |  27000 |
+--------+--------+
3 rows in set (0.01 sec)

mysql> select avg(salary) from employee;
+-------------+
| avg(salary) |
+-------------+
|  19666.6667 |
+-------------+
1 row in set (0.09 sec)

mysql> select avg(salary) as average_salary from employee;
+----------------+
| average_salary |
+----------------+
|     19666.6667 |
+----------------+
1 row in set (0.00 sec)

mysql> select count(*) from employee;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.03 sec)

mysql> select count(*) from employee;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select distinct count(*) from employee;
+----------+
| count(*) |
+----------+
|        3 |
+----------+
1 row in set (0.00 sec)

mysql> select distinct branch from employee;
+--------+
| branch |
+--------+
| CS     |
| COM    |
+--------+
2 rows in set (0.01 sec)

mysql> select sum(salary) as totalsalary from employee group by emp_name having count(emp_name)>1;
Empty set (0.02 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(104,'anu','kochi','f','Sales',3000,'2003-10-08','Sales');
Query OK, 1 row affected (0.08 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(105,'anu','kochi','f','Sales',3000,'2003-10-08','Sales');
Query OK, 1 row affected (0.07 sec)

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+--------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch |
+--------+----------+------------+--------+---------+--------+------------+--------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS     |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM    |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs     |
|    104 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales  |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales  |
+--------+----------+------------+--------+---------+--------+------------+--------+
5 rows in set (0.00 sec)

mysql> insert into employee(emp_no,emp_name,address,sex,dept,salary,doj,branch) values(106,'anu','kasargod','f','revenue',30000,'2002-10-11','revenue');
Query OK, 1 row affected (0.09 sec)

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+---------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch  |
+--------+----------+------------+--------+---------+--------+------------+---------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS      |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM     |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs      |
|    104 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    106 | anu      | kasargod   | f      | revenue |  30000 | 2002-10-11 | revenue |
+--------+----------+------------+--------+---------+--------+------------+---------+
6 rows in set (0.00 sec)


mysql> update employee set emp_name='saayu' where emp_no=106;
Query OK, 1 row affected (1.52 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+---------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch  |
+--------+----------+------------+--------+---------+--------+------------+---------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS      |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM     |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs      |
|    104 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    106 | saayu    | kasargod   | f      | revenue |  30000 | 2002-10-11 | revenue |
+--------+----------+------------+--------+---------+--------+------------+---------+
6 rows in set (0.00 sec)

mysql> update employee set emp_name='ammu' where emp_no=104;
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+---------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch  |
+--------+----------+------------+--------+---------+--------+------------+---------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS      |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM     |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs      |
|    104 | ammu     | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    106 | saayu    | kasargod   | f      | revenue |  30000 | 2002-10-11 | revenue |
+--------+----------+------------+--------+---------+--------+------------+---------+
6 rows in set (0.00 sec)

mysql> select sum(salary) as totalsalary from employee group by emp_name having count(emp_name)>1;
+-------------+
| totalsalary |
+-------------+
|       18000 |
+-------------+
1 row in set (0.00 sec)

mysql> select emp_no,emp_name from employee where salary>12000;
+--------+----------+
| emp_no | emp_name |
+--------+----------+
|    101 | anu      |
|    102 | suganya  |
|    103 | sajith   |
|    106 | saayu    |
+--------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee order by emp_name desc;
+--------+----------+------------+--------+---------+--------+------------+---------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch  |
+--------+----------+------------+--------+---------+--------+------------+---------+
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM     |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs      |
|    106 | saayu    | kasargod   | f      | revenue |  30000 | 2002-10-11 | revenue |
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS      |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    104 | ammu     | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
+--------+----------+------------+--------+---------+--------+------------+---------+
6 rows in set (0.00 sec)

mysql> update employee set emp_name='martin' where emp_no=106;
Query OK, 1 row affected (1.48 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+--------+----------+------------+--------+---------+--------+------------+---------+
| emp_no | emp_name | address    | sex    | dept    | salary | doj        | branch  |
+--------+----------+------------+--------+---------+--------+------------+---------+
|    101 | anu      | tly        | f      | IT      |  15000 | 2018-09-09 | CS      |
|    102 | suganya  | kannur     | others | REVENUE |  17000 | 2019-09-01 | COM     |
|    103 | sajith   | Trivandrum | m      | IT      |  27000 | 2013-09-05 | Cs      |
|    104 | ammu     | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    105 | anu      | kochi      | f      | Sales   |   3000 | 2003-10-08 | Sales   |
|    106 | martin   | kasargod   | f      | revenue |  30000 | 2002-10-11 | revenue |
+--------+----------+------------+--------+---------+--------+------------+---------+
6 rows in set (0.00 sec)

mysql> select emp_name,salary from employee where emp_name='martin';
+----------+--------+
| emp_name | salary |
+----------+--------+
| martin   |  30000 |
+----------+--------+
1 row in set (0.00 sec)

mysql> select emp_name,salary from employee where emp_name='martin' and salary>20000;
+----------+--------+
| emp_name | salary |
+----------+--------+
| martin   |  30000 |
+----------+--------+
1 row in set (0.01 sec)
