CREATE DATABASE amit_shukla;
CREATE TABLE student(
Roll_no int,
Student_name VARCHAR(50),
Age int,
birth_date date
);
show tables;
DESC student;
desc student;
use amit_shukla;
desc person;
show databases;
drop database test;
show tables;

-- 19-07-2024
CREATE TABLE student(
Roll_no INT,
Student_name VARCHAR(50),
age int,
birth_date Date
);
show tables;
desc student;
-- To add column to existing table
-- ALTER TABLE <table-name> ADD COLUMN <column-name><data_type>alter
ALTER TABLE student ADD COLUMN marks INT;
ALTER TABLE student ADD COLUMN contact Int;
-- ALTER TABLE <table-name> ADD COLUMN <column-name><data_type> AFTER STUDENT NAME
ALTER TABLE Student ADD COLUMN teacher_name varchar(60) after student_name;
-- ALTER TABLE <table-name> ADD COLUMN <column-name> <data_type> FIRST;
ALTER TABLE student ADD COLUMN email VARCHAR(70) first;
-- TO DELETE EXISITING COLUMN
-- ALTER TABLE <table-name> DROP COLUMN <column-name>
ALTER TABLE student DROP COLUMN contact; 

-- 17-07-2024

-- To RENAME COLUMN ALONG WITH THE DATATYPE
-- ALTER TABLE <table-name> CHANGE <OLD-col-name><new-col-name><data-type> 
ALTER TABLE teacher CHANGE  subject age int;
-- ALTER TABLE <OLD-TABLE-NAME> RENAME TO <NEW-TABLE-NAME>
ALTER TABLE student RENAME TO Teacher_detail;
ALTER TABLE Teacher_detail RENAME TO student;

desc teacher;
CREATE database XYZ_COMPANY;
use xyz_company;
CREATE TABLE department(
department_id char(20),
depaartment_name varchar(50)

);
drop table department;
select * from department;

DESC DEPARTMENT;
-- INSERT INTO <table-name>
insert INTO department VALUES("D1","IT");
insert INTO department VALUES("D2","");
SELECT * FROM DEPARTMENT;
insert into department values("D3","MARKETING");
show tables;
Create table employee(
employee_id INT,
employee_name varchar(200),
employee_age int
);
desc employee;
ALTER TABLE employee ADD COLUMN employee_Salary varchar(200) after employee_id;
Insert into employee values(11,"Nisha",23),
(12,"pooja",28),
(13,"Nikta",26),
(14,"Rahul",20),
(15,"Janki",21),
(16,"Neeta",22);
select * from employee;
Drop table employee;
Create table employee(
employee_id char(10) primary key,
employee_name varchar(60) Not NULL,
employee_email VARCHAR(90) unique not null,
employee_salary INT
);
-- To add Not null constraint
-- ALTER TABLE <TABLE-NAME> MODIFY <COL-name> <data-type> NOT NULL;
-- TO REMOVE NOT NULL CONSTRAINT
-- ALTER TABLE <table-name> MODIFY <col-name> <data-type>;
ALTER TABLE employee MODIFY employee_name varchar(60);
show tables;
desc employee;
use xyz_company;
-- -6>=0
ALTER TABLE  employee ALTER  employee_salary Drop Default;
-- ALTER TABLE <table-name>ADD CONSTRAINT <constraint_name> CHEKCK(condition);
Alter TABLE employee ADD CONStraint check_salary CHECK(employee_salary>=0);
INSERT INTO employee values
("E4","Nitya","nm@gmail.com",-50000);


-- 22-07-2024
Create table school(
School_id int primary key,
School_name varchar(100)
);

create table student(
Roll_no int primary key,
student_name varchar(100)not null,
phone_no bigint,
school_id int,
constraint student_school foreign key (school_id)
references school(school_id)
);
desc School;
desc student;
insert into school values (1,"GSB");
select * from school;

Drop table employee;


Create table department(d_id char(2) primary key,
department varchar(30)NOt NULL
);
use amit_shukla;
drop table department;

Create table employee(e_id int primary KEY,
e_name varchar(40) Not NULL,
city varchar(20),
salary int,
department char(2),
constraint employee_department foreign key(department)
references department(d_id)
);
drop table employee;

INSERT INTO department values("D1","Maketing"),
("D2","IT"),
("D3","Human Resource");
Desc department;
select * from department;

select * from department;
Insert into employee Values(1111,"NIKITA","Mumbai",67000,"D1"),
(1112,"Prajakta","Pune",80000,"D1"),
(1113,"Manisha","Bangalore",20000,"d2"),
(1114,"nilesh","mumbai",100000,"d3"),
(1115,"Monal","pune",4452,"D2");
drop table employee;
use xyz_company;

select * from  employee;


-- 23 07 2024

select (100>45);
select (100<45);
select (100<100);
select (100<=100);

-- and All statements should be true

select (87!=87 and 67>56);
select (90>=90 and 45!=78 and 23<78);
select not(87!=87 and 67>56);
-- or Atleast one statement should be true
select (98<100 or 367!=400);
select(100!=100 or 60<89);
select(58>100 or 190<150 or 50!=90);
select not(100!=100 or 60<89);
desc department;
select * from employee;
select * from department;
-- select col_name1 .... from table_name;

select e_id from employee;
select e_name,salary From employee;


select (10>7) As answer;
select * from employee where e_id=1111;
select department from employee where e_id= 1112;
select * from employee where city="mumbai";
select * from employee where salary<80000;
select * from employee where city="mumbai" And salary<50000;
select * from employee where city="mumbai" or city="Bangalore";

-- 11 12 13 14 ... 20 values>=11 and values<20
select * from employee where salary>11000 and salary<=20000;

-- department 1 and salary should be less than 20000
select * from employee where department="D1" and city="pune";
-- short cut OR operator
select * from employee where e_id=1112 or e_id=1112 or e_id=1113;
select * from employee where e-id in (1111,1112,1113);
select * from employee where city in ("mumbai","pune");
select * from employee where salary between 20000 and 50000;
alter table employee add column age int;
select * from employee;
update employee SET age=20 where e_id=1111;
update employee SET age=21 where e_id=1112;
update employee SET age=22 where e_id=1113;
update employee SET age=23 where e_id=1114;
update employee SET age=24 where e_id=1115;
update employee set city="MUMBAI" where e_id= 1111;
Update employee set salary=salary+5000 where e_id=1115;
Update employee set age=age+2 where e_id=1115;
update employee set salary=salary-2000 where e_id=1111;
update employee set age= null where e_id in(1111,1113);
select * from employee where age is null;
select * from employee where age is not null;
select * from employee where e_name!="nikita";


-- 25 07 2024
select * from employee;
select * from employee where e_name like "n%a";
select * from employee where e_name like "m_n%";
select * from employee where e_name not like "m_n%";
select * from employee where e_name like "%n%";
select * from employee where e_name like "m%";
select * from employee where e_name like "%ta";
select * from employee where e_name like "m%" and city="pune";
select * from employee where e_name like "%t_";
select * from employee where e_name like "%t_";

-- delete From <table_name>Where Condition;
Delete From employee where e_id=1114;
Delete From employee where department ="1" and age<29;
Delete from employee where e_name like "%l";

select * from employee order by salary Limit 1;
select * from employee order by salary desc;
select * from  employee order by salary desc,age desc limit 3;
select * from employee order by age;
select * from employee order by age desc;

select count(E_id) from employee group by department;

select department,count(e_id) from employee group by department;
Select city,count(e_id) from employee Group By city;
select city,sum(salary) from employee group by city;
select sum(salary)from employee group by city="mumbai";
select sum(salary)from employee group by city;
select city,sum(salary),avg(salary),min(salary),max(salary) from employee Group by city; 
select department,sum(salary) from employee group by department;
Alter table employee add column gender varchar(30);

ALTER TABLE employee MODIFY e_id int;
select * from employee; 
update employee set gender="f" where e_id=1111;
update employee set gender="f" where e_id=1112;
update employee set gender="f" where e_id=1113;
update employee set gender="m" where e_id=1114;
update employee set gender="f" where e_id=1115;

Use xyz_company;
-- select count(*) from employee where salary<50000 group by gender an gender="f";
select gender,count(e_id) from employee where salary<50000 group by gender having gender="f";

select department,avg(salary)as average_salary from employee group by department having avg(salary)<50000;
select department,avg(salary) as average_salary from employee group by department order by average_salary limit 1;
select department,avg(salary) as average_salary from employee group by department order by average_salary  desc limit 1;
select department,avg(salary) as average_salary from employee group by department order by count(e_id) limit 1;
select department,avg(salary) as average_salary from employee group by department order by sum(salary) limit 1;


SELECT DATE_FORMAT(NOW(),"%T");
use xyz_company;
 -- 29 07 2024
 -- built functions
 -- contact ("hello","world") Hello world 
 select Concat("Amit"," ","shukla");
 select * from employee;
 -- E1 -nikta
 select e_id,e_name,concat(e_id,"-",e_name) from employee;
 -- email e1.ename@itvedant.commit
 select e_id,e_name,concat(e_id,"-",e_name,"@itvedant.com") as email from employee;
 -- upper ("sql") SQL
 select upper("sql");
 select lower("ABC");
 INSERT INTO employee values
 (1112,"prajakta",lower("pune"),80000,"d1",21,("f"));
 select length("hello");
 select length("he    llo");
 -- 5>20
 select length("NISHA")>20;
SELECT E_name,length(e_name) from employee;

-- H e l l o
-- 1 2 3 4 5
select substr("Hello",2,1);
select substr("hello",2,2);
select substr("hello",5,1);
select substr("Anju",length("Anju"),1); 
select e_name,substr(e_name,length(e_name),1) from employee;
select e_name,upper(substr(e_name,Length(e_name),1)) from employee;
select concat(e_name,"-",upper(substr(e_name,length(e_name),1))) from employee;

select concat(upper(substr(e_name,1,1)),lower(substr(e_name,2,length(e_name)-1))) from employee;

-- 30 07 2024
-- mod(m,n)
select mod(71,3);
select round(5.785,1);
select ceil(77.00);
select floor(45.78);
select sqrt(17);
select round(sqrt(17),4);
select sign(-80);
select sign(5);
Select truncate(5.678354556,4);
select round(5.565656779,4);
select power(5,2);
--   ---
select ceil(avg(salary)) as average_salary from employee;
-- date relate function
-- YYYY-MM-DD
SELECT curdate();
--  HH:MM:SS
select curtime();
-- YYYY-MM-DD HH:MM:SS
Select curtime();
-- YYYY-MM-DD HH:MM:SS
select now();
select date("2024-11-05 07:25:20");
select date(now());
select day ("2024-10-20");
select month(curdate());
select year("2024-10=20");
select month(curdate());
select month("2024-10-20");
select year("2023-10-20");
alter table employee add column joining_date date;
select * from employee;
update employee set joining_date="2022-5-11" where e_id in(1115);
update employee set joining_date="2023-9-4" where e_id in(1114,1111,1112);
select e_id,e_name,joining_date,year(joining_date) from employee;
select * from employee where year(joining_date)=2022;
select * from employee where year(joining_date)=2022 or year(joining_date)=2023;
-- select em_name,count(joining_date) from employee where year(2021) or year(joining_date)=2023;
select year(joining_date)as joining_year,count(e_id) from employee group by year(joining_date) having joining_year=2022;
select year(joining_date)as joining_year,count(e_id) from employee group by year(joining_date) ;

--  -------------------------------------------    ----DATE FORMAT------------------------------------
select date_format("2024-11-21","%d-%m-%y");
-------------------------- capital "%D-%M-%Y month name

select date_format("2024-11-21","%D-%M-%Y");
-- %W IS A WEEK NUMBER 0-SUN 1-MON
select date_format("2024-11-21","%D-%M-%Y %w");
select date_format("2024-11-21","%D-%M-%Y %W");
-- CAPITAL W WILL GIVE YOU DAY NAME

SELECT date_format(now(),"%D %M %Y %H::%i::%s");
select date_format(now(),"%b");
select date_format(now(),"%c");

-- 31 07 2024

select * from employee;
 -- 30000 very less 60000 Average high 90000 
 select  e_name,salary,
 case
 when salary<30000 then "very less"
 when salary<60000 then "Average"
 when salary<100000 then "very high"
 else"-"
 End as salarydata,e_name from employee;

 select  e_name,department,
 case
 when department="D1"then  "marketing"
 when department="D2"then  "IT"
 when department="D3"then  "Hr"
 else"-"
 End as departmente,salary,
 case
 when salary<30000 then "very less"
 when salary<60000 then "Average"
 when salary<100000 then "very high"
 else"-"
 End as salarydata,e_name from employee;
 
 -- 01 08 2024
 select isnull("amit");
 select datediff(curdate(),"2024-07-25");
 select e_name,joining_date,datediff(curdate(),joining_date) from employee;
 select e_name,joining_date,datediff(curdate(),joining_date) as no_of_days from employee where datediff(curdate(),joining_date)>365;
 -------- date_add
 select date_add(curdate(),interval 100 day);
 select date_add(curdate(),interval 10 MONTH);
 select date_add(curdate(),interval 10 YEAR);
 -- (-FOR PAST DAYS YA YEAR)
 select date_add(curdate(),interval -100  Day);
 
 select * from department;
 select e_name,joining_date,date_add(joining_date,interval 1 year) as anniversary from employee;
 
 update employee set department=null where e_id=1114;
 select * from employee;	
 insert into department values("D4","operation");
 
 
 
 --  inner join
 select * from employee
 inner join department
 on employee.department=department.d_id;
 
 select e.e_name,d.department.department from employee  inner join department 
 on 
 e_id.department=d.d_id;
 use xyz_company;
 select * from employee;
 select isnull("amit");
 -- 02 08 2024
 
 
 -- left join
 select * from employee e
 left join department
 on
 e.department=department.d_id
 where e.salary<50000
 order by e.salary desc limit 1;
 
 -- right join
 select * from employee e
 right join department d 
 on 
 e.department=d_id
 where e_id is null;
 -- cross join
 
 
 Create table department_duplicate(
 department_id char(10),
 department_name varchar(50),
 city varchar(60)
 );
 
 
 insert into department_duplicate values
 ("D1","marketing","mumbai"),
 ("D6","Training","pune");
 select * from department_duplicate;
 
 select * from employee e,department d where e.department=d.d_id and d_id="d1";
 
 select d_id,department from department
 union all
 select department_id,department_name from department_duplicate;
 
 -- 05 08 2024
 select * from employee e
 left join department d 
 on
 e.department=d.d_id
 union
 select * from employee e 
 right join department d 
 on e.department=d.d_id;
 
 
 -- Equi join it uses the equality(=) Symbol to compare the data between two columns
 select * from employee e,department d 
 where e.department=d.d_id;
 
 -- non-Equi Join
 select * from employee e,department d 
 where e.department=d.d_id and e.salary<50000;
 
 -- subqueries in SQL a subquery can be simply defined as a query within another query
 select min(salary)from employee;
 select * from employee where salary=(select min(salary)from employee);
 select max(salary) from employee;
 select * from employee where salary=(select max(salary)from employee);
  select avg(salary) from employee;
  select * from employee where salary<(select avg(salary)from employee);
    select * from employee where salary<(select max(salary)from employee) order by salary desc limit 1;
     use xyz_company;
select * from department where 
department ="marketing";
select * from department;
update department set department="marketing" where d_id="D1";
select * from department;
select * from employee;
alter table department add column department_city varchar(100);
update department set department_city="mumbai" where d_id="D1";
update department set department_city="pune" where d_id="D2";
update department set department_city="Delhi" where d_id="D3";
update department set department_city="Banglore" where d_id="D4";

select * from department where department_city="mumbai";

-- in is used for multiple values
select * from employee where department in (select d_id from department where department_city="mumbai");


-- 06 08 2024 
-- stored procedure
-- in out
-- why DELIMITER IS USEd
-- DELIMITER IS USED TO CHANGED END
Delimiter $$
select * from employee $$
select * from department $$

/*
DELIMITERS $$ alter
CREATE PROCEDURE procedure_name()

BEGIN

END$$
DILIMITER;
*/
DELIMITER $$
CREATE procedure getEMPLOYEE()

BEGIN

SELECT * FROM employee ;
END$$
DELIMITER ;
call getemployee;

DELIMITER $$
 CREATE procedure getdepartment()
 BEGIN
 select * from department;

END$$
DELIMITER ;
call getdepartment;


DELIMITER $$
Create procedure get_by_city(IN CITY VARCHAR(100))

BEGIN

SELECT COUNT(*) FROM EMPLOYEE where employee.city=city;
END$$
DELIMITER ;
CALL GET_BY_CITY("mumbai");

-- 12 08 2023
-- getyear
select @ age;
set @salary=50000;
select * from employee where salary<@salary;

DELIMITER $$
CREATE procedure getYEAR(in e_id int(10),out reg_year int)

Begin

select year(joining_date) into reg_year from employee where employee.e_id=e_id;
end$$
DELIMITER ;
Call GetYEAR(1114,@reg_year);
select * from employee where year(joining_date)=@reg_year;

select * from employee;
-- 14 08 2024

Delimiter $$

Create procedure updateSalary(IN e_id char(4), inout salary int)

Begin 

Declare old_Salary int;
Select employee.salary into old_salary from employee where employee.e_id=e_id;
update employee set employee.salary=salary where employee.e_id=e_id;
set salary=old_salary;
END$$
delimiter ;
 set @salary=85000;
 call updatesalary(1,@salary);
 select @salary;
 
 /*
 Delimiter $$
 create function fun_name(p1,p2.....pn)
 return datatype
 begin
 // LOGIC
 return values ;
 end$$
 DELIMITER ;
 */
 
 Delimiter $$
 Create function addition(a int, b int)
 returns int
 Begin
 Return a+b;
  end $$
   Delimiter ;
   Select addition(510,200);
   
    Delimiter $$
 Create function subtraction(a int, b int)
 returns int
 Begin
 Return a-b;
  end $$
   Delimiter ;
   Select subtraction(510,200);
   
   
   -- 16 08 2024
     use xyz_company;
   /*
   Syntax
   if condition THEN
   Statements 
   END IF;
   IF condition THEN Statement1
   ELSE
   Statement2
   END IF
   */
   
   DELIMITER $$
   create function checkNumber(n INT)
   RETURNS VARCHAR(4)
   BEGIN
   IF (n%2=0)THEN
   RETURN "EVEN";
   else
   RETURN "ODD";
   END IF;
   END$$
DELIMITER ;
SELECT CHECKNUMBER(60);


DELIMITER $$
   create function AGEcheck(age INT)
   RETURNS bool
   BEGIN
   IF (AGE>18)THEN
   RETURN True;
   else
   RETURN False;
   END IF;
   END$$
DELIMITER ;
SELECT agecheck(19);


                                  -- ELSE IF --
                                  
                                  
  /*
  IF condition THEN
  statement1
  ELSE IF condition THEN
  statement2
  ELSE IF condition THEN
  statement3
  
  */
  DELIMITER $$
  CREATE FUNCTION selectlanguage(choice INT)
  RETURNS VARCHAR(20)
  BEGIN
  IF (Choice=1) THEN
  RETURN "ENGLISH";
  ELSEIF (Choice=2) THEN
  RETURN "Marathi";
   ELSEIF (Choice=3) THEN
  RETURN "Hidi";
  else
  RETURN "INVALID INPUT";
  END IF;
  END $$
  DELIMITER ;
  
  SELECT selectLanguage(1);
  
  DELIMITER $$
  CREATE FUNCTION selectarmforce(choice INT)
  RETURNS VARCHAR(20)
  BEGIN
  
   IF (Choice=1) THEN
  RETURN "Army";
  ELSEIF (Choice=2) THEN
  RETURN "navy";
   ELSEIF (Choice=3) THEN
  RETURN "Airforce";
  else
  RETURN "INVALID INPUT";
  END IF;
  END $$
  DELIMITER ;
  
  SELECT selectarmforce(1);
  
  -- 19 08 2024
  /*
  Syntax
  label Name:Loop
  IF condition THEN
  LEAVE LOOP label Name;
  */
  
  DELIMITER $$
  CREATE PROCEDURE loopExample()
  BEGIN
  Declare I INT;
  SET i=1;
  SimpleLoop:Loop
  if i=6 THEN
  LEAVE SIMPLELOOP;
  END IF;
  SELECT "Hello";
  SET i=i+1;
  End LOOP simpleLoop;
  END$$
  DELIMITER ;
  CALL loopExample();
  
  
   DELIMITER $$
  CREATE PROCEDURE print1to5()
  BEGIN
  Declare I INT;
  SET i=1;
  SimpleLoop:Loop
  if i=6 THEN
  LEAVE SIMPLELOOP;
  END IF;
  SELECT i;
  SET i=i+1;
  End LOOP simpleLoop;
  END$$
  DELIMITER ;
  CALL print1to5 ();
  
  -- 20 08 2023
  /*
   labelName:While
   CONDITION Do
   // statement
   END WHILE label name;
   */
   DELIMITER $$ 
   CREATE procedure print11to20()
   BEGIN
   DECLARE I INT;
   SET i = 11;
   WhileloopExample:while
   i<=20 do
   select i;
    SET i=i+1;
    END WHILE whileLoopExample;
    END$$
    DELIMITER ;
    CALL print11to20();
    
     DELIMITER $$ 
   CREATE procedure print_even_number_0to50()
   BEGIN
   DECLARE I INT;
   SET i = 11;
   WhileloopExample:while
   i<=50 do
   select i;
    SET i=i+2;
    END WHILE ;
    END$$
    DELIMITER ;
    Call print_even_number_0to50();
    CALL print11to20();
    
    CREATE TABLE students(s_id INT NOT NULL);
    desc students;
    insert into students Values(null);
    DELIMITER $$
    CREATE PROCEDURE exceptionHandling(IN s_id INT)
    Begin
    DECLARE CONTINUE HANDLER FOR 1048
    BEGIN
    select "YOU CANNOT INSERT NULL VALUE";
    END;
    insert into students Values(s_id);
    select "code after insertion";
    END$$
    DELIMITER ;
    CALL exceptionHandling(null);
    
    
    
    CREATE TABLE students(s_id INT NOT NULL);
    alter table students modify column s_id int primary key;
    desc students;
    INSERT INTO students values(500);
    INSERT INTO students values(500);
    insert into students Values(null);
    
    DELIMITER $$
    CREATE PROCEDURE erroHandling(IN s_id INT)
    Begin
            DECLARE CONTINUE HANDLER FOR 1062
            BEGIN
           select "YOU CANNOT INSERT Duplicate values";
            END;
    insert into students Values(s_id);
    select "code after insertion";
    END$$
    DELIMITER ;
    CALL erroHandling(500);
    
    -- 21 08 2024  Cursor
    select * from employee;
    /*
    Declare Cursor
    OPEN CURSOR
    Fetch CURSOR
    CLOSE CURSOR
    */
    /*
    1) Declare Cursor
        Declare Cursor_name CURSOR fOR select query
        Declare  S CURSOR FOR SELECT id FROM student;
	2)  OPEN CURSOR
        Open  cursor_name;
        open s;
	3) Fetch CURSOR
       FETCH cursor_name INTO variable_list;
       FETCH S INTO Student_id;
   4) CLOSE CURSOR
      CLOSE  cursor_name;
      CLOSE S;
      */
    SELECT * FROM  employee;
    DELIMITER $$
    Create procedure cursorexample()
    Begin
    DECLARE E_ID INT;
    DECLARE e_name varchar(100);
    DECLARE e_cursor cursor for
    select employee.E_ID,employee.e_name from employee;
    open e_cursor;
    FETCH e_cursor into E_ID,e_name;
    close e_cursor;
    END$$
    DELIMITER ;
    Call cursorexample();
    drop procedure cursorexample;
    show tables ;
     
    
    -- 23 08 2023
        use xyz_company;
    -- trigger
    --  id name working_hours pay_per_hour salary previous_pay
    --  INSERT   NEW 
    -- UPDATE    OLD   NEW
    -- DELETE    OLD
    /*
    CREATE TRIGGER trigger_name
    (Before | AFTER) (INSERT | UPDATE |)
    ON TABLE_NAME FOR EACH ROW
    BEGIN
    
    END
    */
    
    CREATE TABLE employee1(
    name VARCHAR(100),
    Working_hours INT,
    pay_per_hour INT,
    salary INT
    );
    
    select  * from employee1;
    
    INSERT INTO employee1 (name,working_hours,pay_per_hour)
    values("Rahul",3,500);
   
     drop table employee1;
    DELIMITER $$
    CREATE TRIGGER before_insert_employee1
    BEFORE INSERT
    ON employee1 FOR EACH ROW
    BEGIN
      set NEW.salary=NEW.working_hours*NEW.pay_per_hour;
      
      END$$
      DELIMITER ;
    Drop trigger before_insert_employee1;
    
    
    DELIMITER $$
    CREATE TRIGGER before_update_employee1
    BEFORE UPDATE
    ON employee1 FOR EACH ROW
    BEGIN
    SET NEW.salary=NEW.working_hours*new.pay_per_hour;
    END$$
    DELIMITER ;
    UPDATE employee1 set working_hours=5 WHERE name="Rahul";
    ALTER TABLE employee1 ADD COLUMN previous_pay INT;
    
    
    
    
    
    
   
    
	
      
    
    
    
  
    
    
    
   
   

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


 










 
 
 
 
 
 
 
 
 
  
 
 
 
 

 
 
 
 
 
 
 
 






































































