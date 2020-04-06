SELECT 
  piskunova_user.lastname,
  piskunova_user.firstname,
  piskunova_user.patronomic,
  piskunova_gender.name, 
  piskunova_otdel.name
  FROM piskunova_user


  INNER JOIN piskunova_teacher ON piskunova_user.user_id = piskunova_teacher.user_id
  INNER JOIN piskunova_otdel  ON piskunova_teacher.otdel_id = piskunova_otdel.otdel_id
  INNER JOIN piskunova_gender  ON piskunova_user.gender_id = piskunova_gender.gender_id

  WHERE piskunova_otdel.otdel_id=1




