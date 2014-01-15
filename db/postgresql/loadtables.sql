SET CLIENT_ENCODING TO 'latin1';

COPY security FROM '../../data/security.del' WITH DELIMITER '|';
COPY employee FROM '../..data/employee.del' WITH DELIMITER '|';
COPY lobby FROM '../..data/lobby.del' WITH DELIMITER '|';
COPY hardware FROM '../../data/hardware.del' WITH DELIMITER '|';
VACUUM FULL ANALYZE;
