CREATE TABLE departments (
    department_id INTEGER PRIMARY KEY,
    department_name TEXT NOT NULL,
    department_location TEXT NOT NULL,
    department_manager_email TEXT NOT NULL
);
CREATE TABLE employees (
    employee_id INTEGER PRIMARY KEY,
    employee_name TEXT NOT NULL,
    employee_email TEXT NOT NULL UNIQUE,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
