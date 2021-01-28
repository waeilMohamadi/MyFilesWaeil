CREATE TABLE employee (
	id SERIAL PRIMARY KEY, 
	emfirst_name VARCHAR(100) NOT NULL,
	emlast_name VARCHAR(100) NOT NULL,
	"age" INTEGER NOT NULL,
	created_at Timestamp DEFAULT current_timestamp 
);

select * from employee e 

INSERT INTO employee (emfirst_name , emlast_name , "age")
VALUES 
('Waeil', 'Mohamadi', 20),
('John', 'Adam', 60),
('David', 'Garcia', 60),
('Moe', 'Babo', 30);
-------------------------------------------------------------------------------------------------
CREATE TABLE empdepartment(
	id SERIAL PRIMARY KEY, 
	D_name VARCHAR(88) NOT NULL,
	D_job VARCHAR(50) NOT NULL,
  	employee_id INTEGER,
		CONSTRAINT fk_employee FOREIGN KEY(employee_id) references employee(id) 

);
INSERT INTO empdepartment (d_name  , d_job , employee_id)
VALUES 
('HR', 'PayRol',8),
('Machnic','Machine Operator',9),
('HR','D-Safty',10),
('Engineering','Networking',11);

select * from empdepartment ;
TRUNCATE TABLE empdepartment ;
--------------------------------------------------------------------------------------------
select * from employee e2 inner join empdepartment e3 on employee_id = e3.employee_id 
WHERE e2.id BETWEEN 8 AND 10;
--------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------
Objective: Practice creating tables and inserting data into tables with various constraints.
Try to have:
A primary key for all tables
Some sort of relationship between the two tables (such as a one-to-one, one-to-many, or many-to-many relationship), which is established with foreign keys
Insert some data into each table
Write some queries to retrieve data, (maybe using joins to retrieve data from the relationship between the tables)
In dbeaver you should be able to write the SQL, execute it, and also save the SQL you wrote into a .sql file that you can then create a repository for and push to github.