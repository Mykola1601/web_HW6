
SELECT s.student_name, d.discipline_name, ROUND(AVG(g.grade), 2 ) as max_avg_grade
FROM  grades g 
JOIN students s  ON g.student_id  = s.id 
JOIN disciplines d  ON  d.id  = g.discipline_id 
WHERE  discipline_name  = "історія" 
GROUP BY s.student_name 
ORDER BY max_avg_grade  DESC
LIMIT 1;
