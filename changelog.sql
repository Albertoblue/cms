-- liquibase formatted sql

-- changeset liquibase:4
create table IF NOT EXISTS department(id int primary key auto_increment, name varchar(40));
create table IF NOT EXISTS role(id int primary key auto_increment,title varchar(30), salary decimal(7,3) , department_id int, foreign key fk_department_id(department_id) references department(id));
create table IF NOT EXISTS employee(id int primary key auto_increment, firstName varchar(30), lastName varchar(30), role_id int, manager_id int, foreign key fk_employee_id(manager_id) references employee(id), foreign key fk_role_id(role_id) references role(id));
