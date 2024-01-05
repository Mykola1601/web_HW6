
SELECT s.student_name, t.teacher_name, ROUND(AVG(g.grade), 2 ) as avg_grade
FROM  disciplines d 
JOIN  grades g  ON  g.discipline_id  = d.id 
JOIN  students s ON  s.id  = g.student_id 
JOIN  teachers t  ON  d.teacher_id  = t.id 
WHERE d.teacher_id = 3  AND   s.id = 14 ;
