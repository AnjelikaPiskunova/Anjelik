SELECT 
    piskunova_course.name
FROM 
  piskunova_graduate
  INNER JOIN piskunova_course ON piskunova_graduate.course_id = piskunova_course.course_id

  WHERE piskunova_course.special_id IS NULL

 