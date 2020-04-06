SELECT 
  piskunova_course.name, 
  piskunova_course.hours, 
 piskunova_special.name
FROM  
      piskunova_special
 
INNER JOIN piskunova_course
    ON piskunova_course.special_id = piskunova_special.special_id



 WHERE piskunova_special.otdel_id = '2'