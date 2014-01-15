CREATE DATABASE informixgame;


-- Table SECURITY

CREATE TABLE security  (
    badge_number CHAR(5) NOT NULL,
    sign_out_date DATE,
    sign_out_time DATETIME HOUR TO SECOND,
    sign_in_time DATETIME HOUR TO SECOND
    );

ALTER TABLE security
    ADD CONSTRAINT PRIMARY KEY (badge_number) CONSTRAINT pk_security;


-- Table EMPLOYEE

CREATE TABLE employee (
    employee_id CHAR(6) NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    location CHAR(6),
    manager_id CHAR(6),
    extension CHAR(4),
    gender CHAR(1),
    hair_colour CHAR(6),
    badge_number CHAR(5),
    restricted_access CHAR(1)
    );

ALTER TABLE employee
    ADD CONSTRAINT PRIMARY KEY (employee_id) CONSTRAINT pk_employee;


-- Table LOBBY

CREATE TABLE lobby (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    badge_number CHAR(5) NOT NULL
    );

ALTER TABLE lobby
    ADD CONSTRAINT FOREIGN KEY (badge_number)
	REFERENCES security (badge_number)
        CONSTRAINT fk_lobby_badge;


-- Table HARDWARE

CREATE TABLE hardware (
    employee_id CHAR(6),
    location CHAR(6),
    hardware_tn CHAR(8),
    hardware_sn CHAR(8) NOT NULL
    );

ALTER TABLE hardware
    ADD CONSTRAINT PRIMARY KEY (hardware_sn) CONSTRAINT pk_hardware;

ALTER TABLE hardware
    ADD CONSTRAINT FOREIGN KEY (employee_id)
	REFERENCES employee (employee_id)
	CONSTRAINT fk_hardware_emp;
