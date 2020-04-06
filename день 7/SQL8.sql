SELECT
  piskunova_gruppa.name, COUNT(*)
FROM  piskunova_gruppa
  INNER JOIN piskunova_graduate ON piskunova_gruppa.gruppa_id=piskunova_graduate.gruppa_id
GROUP BY piskunova_gruppa.gruppa_id 