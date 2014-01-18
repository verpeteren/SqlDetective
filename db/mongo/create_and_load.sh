#!/bin/bash
cat ../../data/security.del|tr '|' '\t'| mongoimport --host localhost --port 27017 --db NoSqlDetective --type tsv --collection security --fields \
badge_number,\
sign_out_date,\
sign_out_time,\
sign_in_time

cat ../../data/employee.del|tr '|' '\t'|mongoimport --host localhost --port 27017 --db NoSqlDetective --type tsv --collection employee --fields \
employee_id,\
first_name,\
last_name,\
location,\
manager_id,\
extension,\
gender,\
hair_colour,\
badge_number,\
restricted_access

cat ../../data/lobby.del|tr '|' '\t'|mongoimport --host localhost --port 27017 --db NoSqlDetective --type tsv --collection lobby --fields \
first_name,\
last_name,\
badge_number

cat ../../data/hardware.del|tr '|' '\t'|mongoimport --host localhost --port 27017 --db NoSqlDetective --type tsv --collection hardware --fields \
employee_id,\
location,\
hardware_tn,\
hardware_sn


