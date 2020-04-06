SELECT piskunova_otdel.name
From piskunova_otdel
Inner Join piskunova_teacher ON piskunova_teacher.otdel_id = piskunova_otdel.otdel_id
Inner Join piskunova_graduate ON piskunova_graduate.user_id = piskunova_teacher.user_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_day ON piskunova_graduate_time.day_id = piskunova_day.day_id AND piskunova_day.name = 'Вторник'
Inner Join piskunova_lesson_num On piskunova_graduate_time.lesson_num_id = piskunova_lesson_num.lesson_num_id AND piskunova_lesson_num.time_lesson BETWEEN '09:00:00' AND '12:00:00'
