SELECT piskunova_user.user_id, 
  piskunova_user.lastname, 
  piskunova_user.firstname, 
  piskunova_gruppa.name, 
  piskunova_special.name
  FROM piskunova_user
INNER JOIN piskunova_student ON piskunova_student.user_id = piskunova_user.user_id
INNER JOIN piskunova_gruppa ON piskunova_gruppa.gruppa_id = piskunova_student.gruppa_id
INNER JOIN piskunova_special ON piskunova_special.special_id = piskunova_gruppa.special_id
Inner JOIN piskunova_graduate ON piskunova_graduate.gruppa_id = piskunova_gruppa.gruppa_id
INNER JOIN piskunova_course ON piskunova_graduate.course_id = piskunova_course.course_id AND piskunova_course.hours > '95'
