SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.MøArt = 'Rådmandsmøde' AND dagsorden.IndMøDato = '2012-02-24'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøde' AND dagsorden.IndMøDato = '2013-12-17'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøde' AND dagsorden.IndMøDato = '2013-10-01'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde' AND dagsorden.IndMøDato = '2014-01-30'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde' AND dagsorden.IndMøDato = '2014-05-08'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Chefmøde' AND referat.DateX = '2014-02-18'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Rådmandsmøde' AND referat.DateX = '2013-06-27'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Rådmandsmøde' AND referat.DateX = '2013-03-07'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Chefmøde' AND referat.DateX = '2014-02-04'

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.IndMøDato = '2014-05-20'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE referat.DateX = '2013-11-05'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Rådmandsmøde' AND referat.DateX = '2013-04-25'