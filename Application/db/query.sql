USE tables_db;

SELECT *
FROM departments
JOIN roles ON departments.id = roles.department_id;

SELECT id
FROM roles
JOIN employees ON employees.roles_id = roles.id