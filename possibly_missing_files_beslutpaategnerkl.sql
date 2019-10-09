SELECT *
FROM beslutpaategnerkl
INNER JOIN indstilling_beslutpaategnerkl
ON beslutpaategnerkl.beslutpaategnerkl_id = indstilling_beslutpaategnerkl.beslutpaategnerkl_id
INNER JOIN indstilling
ON indstilling_beslutpaategnerkl.indstilling_id = indstilling.indstilling_id
INNER JOIN dagsorden_indstilling
ON indstilling.indstilling_id = dagsorden_indstilling.indstilling_id
INNER JOIN dagsorden
ON dagsorden_indstilling.dagsorden_id = dagsorden.dagsorden_id
INNER JOIN beslutpaategnerkl_fil
ON beslutpaategnerkl.beslutpaategnerkl_id = beslutpaategnerkl_fil.beslutpaategnerkl_id
INNER JOIN fil
ON beslutpaategnerkl_fil.fil_id = fil.fil_id
WHERE beslutpaategnerkl.beslutpaategnerkl_id = '2317' AND dagsorden.Udvalg = 'Byråd'