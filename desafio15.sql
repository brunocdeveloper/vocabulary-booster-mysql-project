USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
	SELECT ROUND(AVG(tableEmployees.SALARY), 2) AS 'Média salarial'
    FROM hr.employees AS tableEmployees
	INNER JOIN hr.jobs AS tableJobs
    ON tableJobs.JOB_ID = tableEmployees.JOB_ID
    AND tableJobs.JOB_TITLE = cargo;
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
