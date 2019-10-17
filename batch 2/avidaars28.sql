SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2013-09-24' AND dagsorden.MøArt = 'GIS-gruppen'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering IS NOT ""Ej publiceret"" AND moedeforum.MøArt = 'GIS-gruppen'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering IS NOT ""Ej publiceret"" AND moedeforum.MøArt = 'Trafik og Veje, Sekretariatet, afdelingsmøder'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering IS NOT ""Ej publiceret"" AND moedeforum.MøArt = 'NM - Chefmøder'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering IS NOT ""Ej publiceret"" AND moedeforum.MøArt = 'Personaleområdets Dialoggruppe'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.moedeforum_id = '245'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'VAND-MED' AND dagsorden.IndMøDato = '2010-02-02'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøder' AND dagsorden.IndMøDato IN ('2007-11-05', '2007-11-06')

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Kommunikationsforum i Teknik og Miljø' AND dagsorden.IndMøDato = '2009-02-25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'EJD - MED-udvalg'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ejendomme - ledermøder' AND dagsorden.IndMøDato IN ('2014-02-12', '2014-05-20')

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Webforum i Teknik og Miljø' AND dagsorden.IndMøDato = '2010-08-27'

SELECT dagsorden.MøArt, count(*)
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
GROUP BY dagsorden.MøArt
ORDER BY count(*) desc

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Trafik og Veje, lukkede ledermøder' AND dagsorden.IndMøDato = '2011-11-15'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøder TM 2010  2011' AND dagsorden.IndMøDato = '2010-01-12'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'POB-ledermøde' AND dagsorden.IndMøDato = '2009-09-24'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'AOE MED' AND dagsorden.IndMøDato = '2014-01-23'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'DirektørFA' AND dagsorden.IndMøDato = '2012-01-19'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = ' bestyrelsesmøde , NVS' AND dagsorden.IndMøDato = '2009-04-15'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'SAMTEK' AND dagsorden.IndMøDato = '2013-05-27'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde - AffaldVarme og Vand' AND dagsorden.IndMøDato = '2008-12-09'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'De Bynære Havnearealer styregruppen for Teknik og Miljøområdet' AND dagsorden.IndMøDato = '2011-11-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde - Myndighedsområdet' AND dagsorden.IndMøDato = '2009-09-08'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'VOS ledergruppe' AND referat.DateX = '2008-04-22'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Vand og Spildevand - Stabsmøde' AND referat.DateX = '2008-07-01'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Chefgruppen - Teknik og Miljø' AND referat.DateX = '2006-09-04'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Trafik og Veje, Drift, afdelingsmøder' AND referat.DateX = '2010-01-01'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Regnskabsmødeaffaldforbrændingsanlægget' AND referat.DateX = '2008-03-18'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Chefgruppen - Afdelingen for Teknik og Miljø' AND referat.DateX = '2005-12-12'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Økonomimøder - Natur og Miljø' AND referat.DateX = '2010-08-16'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Webforum i Teknik og Miljø' AND referat.DateX = '2013-02-21'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Trafik og Veje, Kommunikationsgruppen' AND referat.DateX = '2013-04-02'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'POB - MED-udvalg' AND referat.DateX = '2013-06-17'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Trafik og Veje, Sundhedsgruppen' AND referat.DateX = '2012-06-01'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Fællesadministrationens MED-udvalg' AND referat.DateX = '2011-04-14'

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'EJD - MED-udvalg' AND referat.DateX = '2010-02-24'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Effektivisering - arbejdsgruppe' AND dagsorden.IndMøDato = '2010-03-05'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Ejendomme - ledermøder' AND dagsorden.IndMøDato = '2014-06-13'