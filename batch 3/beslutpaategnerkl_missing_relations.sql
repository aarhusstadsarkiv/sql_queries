SELECT *
FROM beslutpaategnerkl
LEFT JOIN beslutpaategnerkl_fil
ON beslutpaategnerkl.beslutpaategnerkl_id = beslutpaategnerkl_fil.beslutpaategnerkl_id
LEFT JOIN fil
ON beslutpaategnerkl_fil.fil_id = fil.fil_id
LEFT JOIN indstilling_beslutpaategnerkl
ON beslutpaategnerkl.beslutpaategnerkl_id = indstilling_beslutpaategnerkl.beslutpaategnerkl_id
WHERE indstilling_beslutpaategnerkl.indstilling_id IS NULL AND fil.fil_id IS NULL