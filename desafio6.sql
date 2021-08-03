SELECT
CONCAT(tableEmployees.FIRST_NAME, ' ', tableEmployees.LAST_NAME) AS 'Nome Completo',
tableJobs.JOB_TITLE AS 'Cargo',
tableHistory.START_DATE AS 'Data de início do cargo',
tableDepartments.DEPARTMENT_NAME AS 'Departamento'

FROM hr.employees AS tableEmployees
INNER JOIN job_history AS tableHistory ON tableHistory.EMPLOYEE_ID = tableEmployees.EMPLOYEE_ID
INNER JOIN jobs AS tableJobs ON tableJobs.JOB_ID = tableHistory.JOB_ID
INNER JOIN departments AS tableDepartments ON tableDepartments.DEPARTMENT_ID = tableHistory.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, Cargo ASC;
