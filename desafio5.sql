SELECT
JOB_title AS Cargo,
CAST(MAX_SALARY- MIN_SALARY AS DECIMAL(16,2)) AS 'Variação Salarial',
ROUND(MIN_SALARY/12, 2) AS 'Média mínima mensal',
ROUND(MAX_SALARY/12, 2) AS 'Média máxima mensal'
FROM hr.jobs
ORDER BY `Variação Salarial`, Cargo;
