SELECT
trabalhos.JOB_TITLE AS Cargo,
ROUND(AVG(trabalhadores.SALARY), 2) AS 'Média Salarial',
CASE
WHEN AVG(trabalhadores.SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(trabalhadores.SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(trabalhadores.SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(trabalhadores.SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS trabalhadores
INNER JOIN jobs AS trabalhos
ON trabalhadores.JOB_ID = trabalhos.JOB_ID
GROUP BY trabalhos.JOB_TITLE
ORDER BY `Média Salarial`, Cargo;
