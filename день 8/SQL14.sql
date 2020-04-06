SELECT piskunova_user.user_id, 
  piskunova_user.lastname, 
  piskunova_user.firstname
FROM piskunova_user
Inner Join piskunova_student ON piskunova_student.user_id = piskunova_user.user_id
Inner Join piskunova_gruppa ON piskunova_student.gruppa_id = piskunova_gruppa.gruppa_id
Inner Join piskunova_graduate ON piskunova_graduate.gruppa_id = piskunova_gruppa.gruppa_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_day ON piskunova_graduate_time.day_id = piskunova_day.day_id AND piskunova_day.name = 'Пятница'
