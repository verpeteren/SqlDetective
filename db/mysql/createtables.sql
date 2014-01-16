CREATE DATABASE SQLDETECTIVE DEFAULT CHARACTER SET latin1;
CREATE USER 'sqldetective'@'localhost' IDENTIFIED BY 'sherlock';
GRANT ALL ON SQLDETECTIVE.* TO 'sqldetective'@'localhost';
FLUSH PRIVILEGES;
USE SQLDETECTIVE;


-- Table SECURITY
CREATE TABLE security  (
    badge_number CHAR(5) NOT NULL PRIMARY KEY,
    sign_out_date DATE,
    sign_out_time TIME,
    sign_in_time TIME
    ) ENGINE = InnoDb;

-- Table EMPLOYEE
CREATE TABLE employee (
    employee_id CHAR(6) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    location CHAR(6),
    manager_id CHAR(6),
    extension CHAR(4),
    gender CHAR(1),
    hair_colour CHAR(6),
    badge_number CHAR(5) REFERENCES security (badge_number),
    restricted_access CHAR(1)
    ) ENGINE = InnoDb;

-- Table LOBBY
CREATE TABLE lobby (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    badge_number CHAR(5) NOT NULL REFERENCES security (badge_number),
    PRIMARY KEY (first_name, last_name)
    ) ENGINE = InnoDb;
    
-- Table HARDWARE
CREATE TABLE hardware (
    employee_id CHAR(6) PRIMARY KEY,
    location CHAR(6),
    hardware_tn CHAR(8),
    hardware_sn CHAR(8) NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
    ) ENGINE = InnoDb;
