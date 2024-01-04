
SELECT   d.discipline_name
FROM  disciplines d 
JOIN  grades g  ON  g.discipline_id  = d.id 
JOIN  students s ON  s.id  = g.student_id 
WHERE d.teacher_id = 2  AND   s.id = 10
GROUP  BY d.discipline_name ;
