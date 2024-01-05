
--SELECT g.grade, s.student_name, s.group_id , d.discipline_name, g.date_off 
--FROM  grades g 
--JOIN  disciplines d  ON  g.discipline_id  = d.id 
--JOIN  students s ON  s.id  = g.student_id 
--JOIN  teachers t  ON  d.teacher_id  = t.id 
--WHERE d.id =5 AND s.group_id = 3 AND g.date_off = (
--		SELECT  MAX(g.date_off)
--		FROM  grades g 
--		JOIN  disciplines d  ON  g.discipline_id  = d.id 
--		JOIN  students s ON  s.id  = g.student_id 
--		WHERE d.id = 5 AND s.group_id = 3 ) ;



SELECT g.grade
FROM  grades g 
JOIN  disciplines d  ON  g.discipline_id  = d.id 
JOIN  students s ON  s.id  = g.student_id 
JOIN  teachers t  ON  d.teacher_id  = t.id 
WHERE d.id =5 AND s.group_id = 3 AND g.date_off = (
		SELECT  MAX(g.date_off)
		FROM  grades g 
		JOIN  disciplines d  ON  g.discipline_id  = d.id 
		JOIN  students s ON  s.id  = g.student_id 
		WHERE d.id = 5 AND s.group_id = 3 )
ORDER BY g.grade  DESC
;

