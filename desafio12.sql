SELECT
CONCAT(tableEmployees.FIRST_NAME, ' ', tableEmployees.LAST_NAME) AS 'Nome completo funcionário 1',
tableEmployees.SALARY AS 'Salário funcionário 1',
tableEmployees.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(tableEmployees2.FIRST_NAME, ' ', tableEmployees2.LAST_NAME) AS 'Nome completo funcionário 2',
tableEmployees2.SALARY AS 'Salário funcionário 2',
tableEmployees2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM hr.employees AS tableEmployees, hr.employees AS tableEmployees2
WHERE tableEmployees.FIRST_NAME <> tableEmployees2.FIRST_NAME
AND tableEmployees.JOB_ID = tableEmployees2.JOB_ID
ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
