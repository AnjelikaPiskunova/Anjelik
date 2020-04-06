SELECT piskunova_day.*
FROM piskunova_day
LEFT JOIN piskunova_graduate_time ON (piskunova_day.day_id = piskunova_graduate_time.day_id)
WHERE piskunova_graduate_time.graduate_time_id IS NULL
