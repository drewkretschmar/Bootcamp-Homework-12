DROP DATABASE IF EXISTS tables_db;
CREATE DATABASE tables_db;

USE tables_db;

CREATE TABLE departments (
    id: INT AUTO_INCREMENT PRIMARY KEY,
    name: VARCHAR(30)/*hold department name*/
);

CREATE TABLE roles (
    id: INT AUTO_INCREMENT PRIMARY KEY,
    title: VARCHAR(30),/*hold role title*/
    salary: DECIMAL,/*hold role salary*/
    department_id: INT,/*hold reference to department role belong to*/
    FOREIGN KEY (departments)
    REFERENCES (departments_id)
    ON DELETE SET NULL
);

CREATE TABLE employees (
    id: INT AUTO_INCREMENT PRIMARY KEY,
    first_name: VARCHAR(30),/*hold employee first name*/
    last_name: VARCHAR(30),/*hold employee last name*/
    role_id: INT,/*hold reference to employee role*/
    manager_id: INT/*hold reference to another employee who is the manager of current employee (null if no manager)*/
    FOREIGN KEY (roles)
    REFERENCES(roles_title)
    ON DELETE SET NULL
);