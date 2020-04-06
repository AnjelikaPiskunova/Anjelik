SELECT
  piskunova_user.lastname,
  piskunova_user.firstname,
  piskunova_user.patronomic,
  piskunova_gruppa.name,
  piskunova_course.hours,
  piskunova_course.name
FROM piskunova_teacher
INNER JOIN piskunova_user
    ON piskunova_teacher.user_id = piskunova_user.User_id
  INNER JOIN piskunova_graduate
    ON piskunova_graduate.user_id = piskunova_teacher.user_id
  INNER JOIN piskunova_graduate_time
    ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
  INNER JOIN piskunova_lesson_num
    ON piskunova_graduate_time.lesson_num_id = piskunova_lesson_num.lesson_num_id
  INNER JOIN piskunova_course
    ON piskunova_graduate.course_id = piskunova_course.course_id
  INNER JOIN piskunova_gruppa
    ON piskunova_graduate.gruppa_id = piskunova_gruppa.gruppa_id
WHERE piskunova_lesson_num.time_lesson between '08:30:00' AND '15:00:00'
  
