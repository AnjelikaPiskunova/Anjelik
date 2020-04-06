SELECT
 piskunova_day.name, COUNT(*)
 FROM piskunova_course
 INNER JOIN piskunova_graduate ON piskunova_graduate.course_id = piskunova_course.course_id
 INNER JOIN piskunova_graduate_time ON piskunova_graduate_time.graduate_id= piskunova_graduate.graduate_id
 INNER JOIN piskunova_day ON piskunova_graduate_time.day_id=piskunova_day.day_id
 GROUP BY piskunova_day.day_id
