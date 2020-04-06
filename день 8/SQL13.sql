SELECT piskunova_course.course_id, 
       piskunova_course.name
FROM piskunova_course
Inner Join piskunova_graduate ON piskunova_graduate.course_id = piskunova_course.course_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_lesson_num ON piskunova_graduate_time.lesson_num_id = piskunova_lesson_num.lesson_num_id AND piskunova_lesson_num.time_lesson BETWEEN '12:30:00' AND '18:30:00'
