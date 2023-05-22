DROP DATABASE IF EXISTS tables_db;
CREATE DATABASE tables_db;

USE tables_db;

CREATE TABLE department (
    id: INT PRIMARY KEY,
    name: VARCHAR(30)/*hold department name*/
);

CREATE TABLE role (
    id: INT PRIMARY KEY,
    title: VARCHAR(30),/*hold role title*/
    salary: DECIMAL,/*hold role salary*/
    department_id: INT/*hold reference to department role belong to*/
);

CREATE TABLE employee (
    id: INT PRIMARY KEY,
    first_name: VARCHAR(30),/*hold employee first name*/
    last_name: VARCHAR(30),/*hold employee last name*/
    role_id: INT,/*hold reference to employee role*/
    manager_id: INT/*hold reference to another employee who is the manager of current employee (null if no manager)*/
);