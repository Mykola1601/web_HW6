
SELECT  s.student_name , g.group_name 
FROM  students s
JOIN  groups g   ON  s.group_id = g.id  
WHERE  g.id  = 1 ;
