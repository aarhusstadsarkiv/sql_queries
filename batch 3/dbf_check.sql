SELECT dagsorden_indstilling.afsender, count(*) 
FROM fil
INNER JOIN indstilling_fil 
ON fil.fil_id = indstilling_fil.fil_id
INNER JOIN indstilling 
ON indstilling_fil.indstilling_id = indstilling.indstilling_id
INNER JOIN dagsorden_indstilling 
ON indstilling.indstilling_id = dagsorden_indstilling.indstilling_id
INNER JOIN dagsorden 
ON dagsorden_indstilling.dagsorden_id = dagsorden.dagsorden_id
WHERE fil.filename = 'tb_t_ba.dbf'
GROUP BY dagsorden_indstilling.afsender 
ORDER BY count(*) desc