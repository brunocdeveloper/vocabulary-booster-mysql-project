USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE contagem INT;
	SELECT
    COUNT(*)
    FROM hr.job_history AS tableJobHistory
    INNER JOIN hr.employees AS tableEmployees
    ON tableEmployees.EMPLOYEE_ID = tableJobHistory.EMPLOYEE_ID
    AND tableEmployees.EMAIL = email
    INTO contagem;
    RETURN contagem;
END $$

DELIMITER $$

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR')
