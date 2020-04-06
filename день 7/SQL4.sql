SELECT 
  piskunova_gruppa.name, 
  piskunova_gruppa.date_begin, 
  piskunova_gruppa.date_end
FROM 
  piskunova_gruppa
Inner Join piskunova_special ON piskunova_gruppa.special_id = piskunova_special.special_id

where piskunova_special.name = 'Информационные системы'