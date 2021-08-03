SELECT 
UCASE(CONCAT(tableEmployees.FIRST_NAME, ' ', tableEmployees.LAST_NAME)) AS 'Nome completo',
tableHistory.START_DATE AS 'Data de início',
tableEmployees.SALARY AS 'Salário'
FROM hr.employees AS tableEmployees
INNER JOIN job_history AS tableHistory ON tableEmployees.EMPLOYEE_ID = tableHistory.EMPLOYEE_ID
WHERE MONTH(tableHistory.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
