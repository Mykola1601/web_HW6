SELECT s.student_name, ROUND(AVG(g.grade), 2) as average_grade
from grades g 
join students s  ON s.id  = g.student_id 
GROUP BY s.student_name 
ORDER BY  average_grade DESC 
LIMIT 5;

