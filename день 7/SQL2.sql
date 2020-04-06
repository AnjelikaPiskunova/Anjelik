SELECT
  piskunova_user.lastname,
  piskunova_user.firstname,
  piskunova_user.patronomic,
  piskunova_gruppa.name,
  piskunova_special.name
  FROM piskunova_student 

  INNER JOIN piskunova_user ON piskunova_student.user_id = piskunova_user.user_id
  INNER JOIN piskunova_gruppa ON piskunova_student.gruppa_id = piskunova_gruppa.gruppa_id
  INNER JOIN piskunova_special  ON piskunova_gruppa.special_id = piskunova_special.special_id

   WHERE piskunova_special.special_id=1