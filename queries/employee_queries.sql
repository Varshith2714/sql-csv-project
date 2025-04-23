Query 1: Average training score by department
SELECT department, ROUND(AVG(avg_training_score), 2) AS avg_score
FROM employees
GROUP BY department
ORDER BY avg_score DESC;

Query 2: Top employees with high KPIs and awards
SELECT employee_id, department, KPIs_met_more_than_80, awards_won, avg_training_score
FROM employees
WHERE KPIs_met_more_than_80 = 1 AND awards_won = 1
ORDER BY avg_training_score DESC;

Query 3: Age stats by education
SELECT education, AVG(age) AS avg_age, MIN(age) AS min_age, MAX(age) AS max_age
FROM employees
GROUP BY education;
