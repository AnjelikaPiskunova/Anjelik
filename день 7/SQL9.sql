SELECT  
  piskunova_user.lastname,
  piskunova_user.firstname,
  piskunova_user.patronomic 
  FROM 
    piskunova_teacher
 INNER JOIN piskunova_user
    ON piskunova_teacher.user_id = piskunova_user.User_id
  INNER JOIN piskunova_graduate
    ON piskunova_graduate.user_id = piskunova_teacher.user_id
  WHERE piskunova_graduate.user_id IS null