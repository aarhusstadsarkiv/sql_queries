SELECT filename, count(*)
FROM fil
GROUP BY filename
ORDER BY count(*) desc