SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2003-11-11' AND dagsorden.MøArt = 'Afdelingsmøder'

SELECT *
FROM dagsorden
LEFT JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
LEFT JOIN fil ON dagsorden_fil.fil_id = fil.fil_id

SELECT *
FROM dagsorden
LEFT JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
LEFT JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE fil.fil_id IS NULL

SELECT *
FROM dagsorden
LEFT JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
LEFT JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Erhvervsafdelingens afdelingsseminar Ry Park Hotel' AND dagsorden.IndMøDato = '2003-11-20'

SELECT *
FROM dagsorden
LEFT JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
LEFT JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Afdelingsmøde' AND dagsorden.IndMøDato = '2007-04-17'

SELECT *, dagsorden.Body AS db, bilag.Body AS bb
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id

SELECT *, dagsorden.Body AS db, bilag.Body AS bb
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Lokalt MED-udvalg' AND dagsorden.IndMøDato = '2005-08-12'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Erhvervs-by møde' AND dagsorden.IndMøDato = '2008-03-31'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.referat_id = '134'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Erhvervs-by møde' AND referat.DateX = '2008-02-26'