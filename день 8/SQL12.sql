SELECT  piskunova_user.user_id, 
        piskunova_user.lastname, 
        piskunova_user.firstname
FROM piskunova_user
Inner Join piskunova_student ON piskunova_student.user_id = piskunova_user.user_id
Inner Join piskunova_gruppa ON piskunova_student.gruppa_id = piskunova_gruppa.gruppa_id
Inner Join piskunova_graduate ON piskunova_graduate.gruppa_id = piskunova_gruppa.gruppa_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_lesson_num ON piskunova_graduate_time.lesson_num_id = piskunova_lesson_num.lesson_num_id AND piskunova_lesson_num.time_lesson BETWEEN '10:30:00' AND '18:30:00' AND piskunova_user.gender_id='2'
