SELECT *
FROM piskunova_special
INNER JOIN piskunova_course ON piskunova_course.special_id = piskunova_special.special_id
INNER JOIN piskunova_graduate ON piskunova_graduate.course_id = piskunova_course.course_id
INNER JOIN piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
LEFT JOIN piskunova_day ON (piskunova_graduate_time.day_id = piskunova_day.day_id)
LEFT JOIN piskunova_lesson_num ON (piskunova_graduate_time.lesson_num_id = piskunova_lesson_num.lesson_num_id)
WHERE piskunova_lesson_num.time_lesson BETWEEN '14:00:00' and '18:00:00' AND (piskunova_day.name = 'Четверг' OR piskunova_day.name = 'Суббота') AND piskunova_day.day_id IS NULL AND piskunova_lesson_num.lesson_num_id IS NULL
