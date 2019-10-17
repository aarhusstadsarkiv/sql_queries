SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2013-01-31' AND dagsorden.MøArt = 'BYG leder-møde'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'MED Administrativt'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'MED-udvalg for HR, Kommunikation og Trivsel'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'Børn og Unges projektmodel - projektgruppe'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'PPR Syd-Vest'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = "Sundhedsplejeledere og OC'ere"

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefgruppen (før 209-08)' AND dagsorden.IndMøDato = '2006-02-16'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'HMU for Børn og Unge' AND dagsorden.IndMøDato = '2006-08-29'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefgruppen (før 209-08)' AND dagsorden.IndMøDato = '2007-03-08'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Pædagogisk Afdeling (PA) - Chefmøde' AND dagsorden.IndMøDato = '2012-01-16'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Pædagogisk Afdeling (PA) - Chefmøde' AND dagsorden.IndMøDato = '2012-01-16'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøder' AND dagsorden.IndMøDato = '2006-02-01'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'CIRIUS - superbrugermøde' AND dagsorden.IndMøDato = '2009-04-30'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MED 2 - Pædagogisk' AND dagsorden.IndMøDato = '2006-11-28'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = "RULL-områdestyregruppe i område 2" AND dagsorden.IndMøDato = "2010-03-25"

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'RULL-teamet' AND dagsorden.IndMøDato = '2012-04-30'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Personalemøde - Fællessekr.' AND dagsorden.IndMøDato = '2006-03-28'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Videncenter for Pædagogisk Udvikling - ledelsessekretariatet' AND dagsorden.IndMøDato = '2010-01-26'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ledermøde Administrationsafdelingen' AND dagsorden.IndMøDato = '2006-11-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Samarbejdsmøde OCPC' AND dagsorden.IndMøDato = '2011-08-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Møde med fællestillidsrepræsentanter - BUPL' AND dagsorden.IndMøDato = '2010-04-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Møde med org. -ÅSLF' AND dagsorden.IndMøDato = '2009-02-26'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'HMU for Børn og Unge' AND referat.DateX = '2010-03-02'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Møder med decentrale ledere - SKOLELEDERE' AND referat.DateX = '2007-11-30'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Pasningsgarantistyregruppemøde' AND referat.DateX = '2010-11-24'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Trivselsledermøde' AND referat.DateX = '2012-02-28'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Chefgruppen (før 209-08)' AND referat.DateX = '2006-10-09'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MED Område 07' AND referat.DateX = '2007-08-27'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Områdechefer og bu-chefer' AND referat.DateX = '2011-11-21'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'PI - 6-18-årsområdet' AND referat.DateX = '2012-03-20'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'PI - Personalemøder - Pædagogik og Integration' AND referat.DateX = '2012-08-21'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Økonomi - Afdelingsmøde' AND referat.DateX = '2012-06-04'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Investering i børns fremtid' AND referat.DateX = '2010-03-12'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'RULL-baggrundsgruppe' AND referat.DateX = '2011-06-22'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'VidencenterMED' AND referat.DateX = '2009-09-17'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Sektionsmøde - 0-6 års området' AND referat.DateX = '2013-05-07'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'RULL-projektgruppe til revidering af lokaleprogram' AND referat.DateX = '2011-12-15'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Økonomi - Internt ledermøde' AND referat.DateX = '2010-02-24'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Økonomi - Skoler - Adm. ledere - Fællesmøder' AND referat.DateX = '2010-08-27'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'RULL-teamet' AND referat.DateX = '2009-09-21'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'PI - DTO SSP' AND referat.DateX = '2011-05-17'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MED Administrativt' AND referat.DateX = '2011-04-08'

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *, dagsorden.Body AS DB, referat.Body AS RB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Forvaltningschefmøder efter 1.1.2010' AND dagsorden.IndMøDato = '2014-04-09'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = "Dialogmøde - Ledelsessekretariatet  Fællessekretariatet" AND dagsorden.IndMøDato = '2010-12-20'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = "Samarbejdsmøde OCHRKT" AND dagsorden.IndMøDato = "2014-04-07"

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Paragraf 4a - §4a-møder' AND dagsorden.IndMøDato = '2009-06-18'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'RÅDMANDSMØDE-BILAG' AND dagsorden.IndMøDato = '2013-09-18'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Forvaltningschefmøder efter 1.1.2010' AND dagsorden.IndMøDato = '2013-08-21'