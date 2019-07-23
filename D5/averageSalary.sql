CREATE TABLE employee(
  employee_id INT NOT NULL,
  employee_name VARCHAR(30) NOT NULL,
  salary INT NOT NULL,
  dept_id INT NOT NULL,
  PRIMARY KEY (employee_id),
  FOREIGN KEY(dept_id) REFERENCES department(departmen_id)
);

CREATE TABLE department (
  department_id INT NOT NULL,
  department_name VARCHAR(30) NOT NULL,
  city INT NOT NULL,
  PRIMARY KEY (department_id)
);



INSERT INTO EMPLOYEE 
    (employee_id, employee_name,salary, dept_id) 
VALUES 
    (1, 'Fred', 70000,1),
    (2, 'Wilma', 80000,3),
    (3, 'Barney', 100000,2),
    (4, 'Chandler', 76000,1),
    (5, 'Monica', 86000,4),
    (6, 'Pheebe', 100000,3),
    (7, 'Joey', 65000,4),
    (8, 'Ross', 79000,2),
    (9, 'Rachel', 100000,5),
    (10, 'Jon', 12000,7),
    (11, 'Sansa', 70000,6),   
    (12, 'Dany', 80000,8),
    (13, 'Arya', 100000,5),
    (14, 'Cersei', 70000,7),
    (15, 'Jamie', 85000,6),
    (16, 'Tyrion', 105000,8),
    (17, 'Bran', 75000,2),
    (18, 'Melisandre', 83000,9),
    (19, 'Cat', 103000,1),
    (20, 'Rob', 73000,9),
    (21, 'Joffrey', 82000,6),
    (22, 'Bron', 8800,2),
    (23, 'Brienne', 103000,3),
    (24, 'Theon', 74000,5),
    (25, 'Ramsay', 85000,7),
    (26, 'Petyr', 107000,1),
    (27, 'Eddard', 78000,9),
    (28, 'Gilly', 89000,8),
    (29, 'Sam', 109000,2);
    

INSERT INTO department 
    (department_id, department_name,city) 
VALUES 
    (1, 'Human Resources', 'New York'),
    (2, 'Management', 'New York'),
    (3, 'Accounting', 'New York'),
    (4, 'Human Resources', 'Miami'),
    (5, 'Management', 'Miami'),
    (6, 'Accounting', 'Miami'),
    (7, 'Human Resources', 'Boston'),
    (8, 'Management', 'Boston'),
    (9, 'Accounting', 'Boston');
    
SELECT 
department_name, city, avg(salary)
FROM employee LEFT OUTER JOIN department 
ON dept_id = department_id
group by dept_id;