SELECT piskunova_special.name
FROM piskunova_special
Inner Join piskunova_course ON piskunova_course.special_id = piskunova_special.special_id
Inner Join piskunova_graduate ON piskunova_graduate.course_id = piskunova_course.course_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_day ON piskunova_graduate_time.day_id = azat_day.day_id AND piskunova_day.name = 'Вторник'
