SELECT
trabalhos.JOB_TITLE AS Cargo,
ROUND(AVG(trabalhadores.SALARY), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(trabalhadores.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(trabalhadores.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(trabalhadores.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(trabalhadores.SALARY), 2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS trabalhadores
INNER JOIN jobs AS trabalhos
ON trabalhadores.JOB_ID = trabalhos.JOB_ID
GROUP BY trabalhos.JOB_TITLE
ORDER BY `Média Salarial`, Cargo;
