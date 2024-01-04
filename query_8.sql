
SELECT  ROUND(AVG(g.grade), 2 ) as avg_grade, d.teacher_id
FROM  grades g 
JOIN disciplines d  ON  d.id  = g.discipline_id 
WHERE  d.teacher_id  = 2 ;
