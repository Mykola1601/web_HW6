
SELECT  teachers.teacher_name, d.discipline_name
FROM  disciplines d 
JOIN  teachers   ON  d.teacher_id  = teachers.id 
WHERE  teachers.id  = 2 ;
