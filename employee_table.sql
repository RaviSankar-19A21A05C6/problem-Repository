-- Employee Table Creation Script
-- This script creates an employee table with the specified fields

CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Add indexes for better performance
CREATE INDEX idx_employee_name ON employee(name);
CREATE INDEX idx_employee_email ON employee(email);

-- Optional: Add a comment to describe the table
COMMENT ON TABLE employee IS 'Employee information table containing basic employee details';
