SELECT
trabalhos.JOB_TITLE AS Cargo,
trabalhos.MAX_SALARY - trabalhos.MIN_SALARY AS 'Variação Salarial',
ROUND((AVG(trabalhos.MIN_SALARY))/12, 2) AS 'Média mínima mensal',
ROUND((AVG(trabalhos.MAX_SALARY))/12, 2) AS 'Média máxima mensal'
FROM hr.employees AS trabalhadores
INNER JOIN jobs AS trabalhos
ON trabalhadores.JOB_ID = trabalhos.JOB_ID
GROUP BY trabalhos.JOB_TITLE
ORDER BY `Variação Salarial`, Cargo;
