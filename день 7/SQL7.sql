SELECT
  piskunova_otdel.name, COUNT(*)
  FROM piskunova_student
    INNER JOIN piskunova_gruppa 
      ON piskunova_student.gruppa_id = piskunova_gruppa.gruppa_id
        INNER JOIN piskunova_special 
          ON piskunova_gruppa.special_id= piskunova_special.special_id
            INNER JOIN piskunova_otdel ON piskunova_special.otdel_id=piskunova_otdel.otdel_id
              GROUP BY piskunova_otdel.otdel_id