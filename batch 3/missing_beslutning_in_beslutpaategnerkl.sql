/* This query references a certain decision from Lotus Notes where the columns BeslutResume and Indhold are identitical although it is possible to find a more elaborate text in Lotus Notes in the field "Beslutning" when inspecting document properties */

SELECT *
FROM beslutpaategnerkl
LEFT JOIN indstilling_beslutpaategnerkl
ON beslutpaategnerkl.beslutpaategnerkl_id = indstilling_beslutpaategnerkl.beslutpaategnerkl_id
LEFT JOIN indstilling
ON indstilling_beslutpaategnerkl.indstilling_id = indstilling.indstilling_id
LEFT JOIN dagsorden_indstilling
ON indstilling.indstilling_id = dagsorden_indstilling.indstilling_id
LEFT JOIN dagsorden
ON dagsorden_indstilling.dagsorden_id = dagsorden.dagsorden_id
WHERE beslutpaategnerkl.BehDato = '2002-12-02' AND beslutpaategnerkl.BeslutResume = 'Tiltrådt' AND dagsorden.MoedeDato = '2002-12-02' AND indstilling.IndstOverskrift = 'Tillægsbevillinger til budget 2002 vedrørende regulering af den fælles IT-konto'

/* The following query replicates the same issue in a different setting */

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
WHERE beslutpaategnerkl.beslutresume = beslutpaategnerkl.indhold AND beslutpaategnerkl.BeslutResume = 'Tiltrådt' AND dagsorden.MoedeDato = '2002-04-03' AND indstilling.IndstOverskrift = 'Anlægsbevilling til etablering af kombibibliotek på Bakkegårdskolen.'