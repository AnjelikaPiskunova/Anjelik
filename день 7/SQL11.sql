SELECT 
    piskunova_special.name
FROM 
    piskunova_course 
INNER JOIN piskunova_special
    ON piskunova_course.special_id = piskunova_special.special_id
  INNER JOIN piskunova_graduate
    ON piskunova_graduate.course_id = piskunova_course.course_id
WHERE piskunova_graduate.course_id IS NULL