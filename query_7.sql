
SELECT  grades.grade  
FROM  grades 
JOIN  disciplines  ON  grades.discipline_id  = disciplines.id 
JOIN  students  ON  grades.student_id  = students.id  
WHERE  students.group_id  = 1 AND grades.discipline_id  = 1
ORDER BY grades.grade  DESC ;

