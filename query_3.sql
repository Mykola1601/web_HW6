
SELECT  d.discipline_name, gr.group_name,  ROUND(AVG(g.grade), 2 ) as max_avg_grade
FROM  grades g 
JOIN students s  ON g.student_id  = s.id 
JOIN disciplines d  ON  d.id  = g.discipline_id 
JOIN [groups] gr  ON  s.group_id  = gr.id 
WHERE  discipline_name  = "історія" 
GROUP BY gr.group_name
ORDER BY max_avg_grade  DESC ;
