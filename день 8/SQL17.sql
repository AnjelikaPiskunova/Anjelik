SELECT piskunova_user.user_id,
  piskunova_user.lastname,
  piskunova_user.firstname,
  piskunova_otdel.name
FROM piskunova_user
Inner Join piskunova_teacher ON piskunova_teacher.user_id = piskunova_user.user_id
Inner Join piskunova_otdel ON piskunova_teacher.otdel_id = piskunova_otdel.otdel_id
Inner Join piskunova_graduate ON piskunova_graduate.user_id = piskunova_teacher.user_id
Inner Join piskunova_graduate_time ON piskunova_graduate_time.graduate_id = piskunova_graduate.graduate_id
Inner Join piskunova_day ON piskunova_graduate_time.day_id = piskunova_day.day_id AND piskunova_day.name = 'Суббота'
