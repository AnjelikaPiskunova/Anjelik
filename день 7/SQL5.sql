SELECT  
  piskunova_user.lastname, 
  piskunova_user.firstname,
  piskunova_user.patronomic,
  piskunova_gruppa.name,
  piskunova_course.name
 FROM piskunova_student

INNER JOIN piskunova_gruppa
    ON piskunova_student.gruppa_id = piskunova_gruppa.gruppa_id
INNER JOIN piskunova_user
    ON piskunova_student.user_id = piskunova_user.User_id
INNER JOIN piskunova_graduate
    ON piskunova_graduate.gruppa_id = piskunova_gruppa.gruppa_id
INNER JOIN piskunova_course
    ON piskunova_graduate.course_id = piskunova_course.course_id




  