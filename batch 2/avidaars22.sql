SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.MøArt = 'ledergruppen område 07' AND dagsorden.IndMøDato = '2008-02-19'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.moedeforum_id = '7'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'Ledergruppen Grenåvej Øst'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'MEDmøder Grenåvej Vest'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'Ledergruppen Oddervej'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.dagsorden_id = '1035'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ledergruppen Grenåvej Vest' AND dagsorden.IndMøDato = '2012-02-22'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'ledergruppen område 10' AND dagsorden.IndMøDato = '2010-05-12'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'ledergruppen område 05' AND dagsorden.IndMøDato = '2010-04-14'

SELECT dagsorden.MøArt, count(*)
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
GROUP BY dagsorden.MøArt
ORDER BY count(*) desc

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'ledergruppen område 12' AND dagsorden.IndMøDato = '2008-10-24'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'ledergruppen område 11' AND referat.DateX = '2008-11-03'

SELECT referat.MøArt, count(*)
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
GROUP BY referat.MøArt
ORDER BY count(*) desc

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Ledergruppen Grenåvej Øst' AND referat.DateX = '2013-12-04'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'ledergruppen område 12' AND referat.DateX = '2008-09-19'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'ledergruppen område 12' AND referat.DateX = '2008-10-24'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *, dagsorden.Body as DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.møart = referat.MøArt AND dagsorden.IndMøDato = referat.datex
WHERE dagsorden.MøArt = 'Risikostyring - Område Silkeborgvej' AND dagsorden.IndMøDato = '2013-02-28'