create table employee3(Id int,person_name varchar(30),street varchar(30),city varchar(20));
create table works(Id int , company_name varchar(20), city varchar(20));
create table company(company_name varchar(20), city varchar(20));
create table manages( Id int , manager_id int);
ALTER TABLE employee3 ADD PRIMARY KEY (Id);
ALTER TABLE works ADD PRIMARY KEY (Id);
ALTER TABLE company ADD PRIMARY KEY (company_name);
ALTER TABLE manages ADD PRIMARY KEY (Id);
ALTER TABLE works ADD (salary INT);
select * from works;
ALTER TABLE employee3 MODIFY (city varchar(20));
ALTER TABLE employee3 DELETE (street);
ALTER TABLE employee3 DROP COLUMN street;
ALTER TABLE manages RENAME COLUMN manager_id TO manager;
RENAME company TO cmp;
DROP TABLE manages;
DROP TABLE employee;
CREATE TABLE employee (
empno INT,
empname VARCHAR(20),
designation VARCHAR(20),
city VARCHAR(20),
salary INT,
zipcode INT,
county INT
);

SEQUENCE
CREATE SEQUENCE empno_seq
START WITH 1
INCREMENT BY 1;
INDEX
create index icounty on employee(county);
INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;John Doe&#39;, &#39;Manager&#39;, &#39;New York&#39;, 60000, 10001, 1);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Jane Smith&#39;, &#39;Developer&#39;, &#39;Los Angeles&#39;, 55000, 90001, 2);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Sam Brown&#39;, &#39;Tester&#39;, &#39;Chicago&#39;, 50000, 60601, 3);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Emily White&#39;, &#39;HR Specialist&#39;, &#39;Houston&#39;, 45000, 77001, 4);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Michael Green&#39;, &#39;Developer&#39;, &#39;Phoenix&#39;, 60000, 85001, 5);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Sarah Black&#39;, &#39;Manager&#39;, &#39;Philadelphia&#39;, 65000, 19101, 6);
INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)

VALUES (empno_seq.NEXTVAL, &#39;Rachel Pink&#39;, &#39;Developer&#39;, &#39;mumbai&#39;, 59000, 95101, 11);

INSERT INTO employee (empno, empname, designation, city, salary, zipcode, county)
VALUES (empno_seq.NEXTVAL, &#39;Radhey khule &#39;, &#39;Developer&#39;, &#39;mumbai&#39;, 59000, 95101, 12);
View
CREATE VIEW low_salary AS
SELECT empno, empname, designation, city, salary, zipcode, county
FROM employee
WHERE salary &lt; 500000
AND city = &#39;mumbai&#39;;
select * from low_salary;
