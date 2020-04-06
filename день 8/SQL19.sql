SELECT piskunova_course.name, 
  piskunova_course.hours, 
  piskunova_special.name, 
  piskunova_day.name
FROM piskunova_otdel 
INNER JOIN piskunova_special ON piskunova_special.otdel_id = piskunova_otdel.otdel_id
INNER JOIN piskunova_course ON piskunova_course.special_id = piskunova_special.special_id
INNER JOIN piskunova_graduate ON piskunova_graduate.course_id = piskunova_course.course_id
INNER JOIN piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
INNER JOIN piskunova_day ON piskunova_graduate_time.day_id = piskunova_day.day_id 
WHERE piskunova_otdel.otdel_id = '2' AND (piskunova_day.day_id = '3' OR piskunova_day.day_id = '5')
