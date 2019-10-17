SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2014-04-09' AND dagsorden.MøArt = 'Chefmøde BEF'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'Børn- og Voksne Superbrugere'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'YdelsescenterMEDudvalg'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'CSU - Med-udvalget'

SELECT *
FROM moedeforum
LEFT JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
LEFT JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.MøArt = 'MAG1 LES - Det Sociale Forbrugerråd'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 LES - Hoved-MED-udvalget' AND dagsorden.IndMøDato = '2009-08-25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 ØA - Husgruppemøde Jægergården' AND dagsorden.IndMøDato = '2014-05-05'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'BU - Forvaltningsmøder' AND dagsorden.IndMøDato = '2005-09-19'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 LES - Det Sociale Forbrugerråd' AND dagsorden.IndMøDato = '2007-08-14'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 Økonomiafdelingen - tirsdagsmøde' AND dagsorden.IndMøDato = '2006-12-05'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG 1 ØSC - MED-udvalgsmøde' AND dagsorden.IndMøDato = '2012-03-01'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2004-04-22'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 LES - Rådmandsmøde' AND dagsorden.IndMøDato = '2004-06-02'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 SOC-Chefmøder' AND dagsorden.IndMøDato = '2009-10-12'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'DIREKTIONSMØDE' AND dagsorden.IndMøDato = '2010-11-11'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde' AND dagsorden.IndMøDato = '2014-05-13'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøde BEF' AND dagsorden.IndMøDato = '2010-07-01'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'IT-Chefmøde' AND dagsorden.IndMøDato = '2009-09-15'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'JC Ledermøder' AND dagsorden.IndMøDato = '2012-10-11'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ydelsescenter Ledelsesmøde' AND dagsorden.IndMøDato = '2011-01-25'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Servicecenter for Økonomi - chefmøder' AND dagsorden.IndMøDato = '2009-09-23'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Mag1 SOC - FBU chefmøder' AND dagsorden.IndMøDato = '2014-09-08'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Servicecenter for Økonomi - chefmøder' AND referat.DateX = '2009-10-21'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 LES - Hoved-MED-udvalget' AND referat.DateX = '2009-06-02'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 LES - Det Sociale Forbrugerråd' AND referat.DateX = '2009-11-10'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 ØSC Arbejdsmiljøgruppen' AND referat.DateX IN ('2014-01-20', '2014-04-09', '2014-08-20')

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'IT-Fælles' AND referat.DateX = '2009-11-27'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Ydelsescenter Ledelsesmøde' AND referat.DateX = '2011-12-06'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Servicecentret Ledelsessekretariat og Kommunikation-personalemøde'  AND referat.DateX = '2010-10-26'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'YdelsescenterMEDudvalg' AND referat.DateX = '2012-10-23'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Servicecenter IT fællesmøde' AND referat.DateX = '2011-11-15'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'CSU - Med-udvalget' AND referat.DateX = '2012-12-12'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 ØS - Udvalget for Sikkerhedsforhold på Jægergården' AND referat.DateX = '2009-09-10'

SELECT *, bilag.Overskrift AS BO, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Ydelsescentret - Møder ny organisation' AND referat.DateX = '2012-08-14'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2008-08-07'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2009-06-25'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2004-02-12'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2008-06-19'

SELECT *, fil.filename AS filnavn, bilag.Overskrift AS BO, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2008-06-19'

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Direktionsmøde (LUKKET)' AND dagsorden.IndMøDato = '2014-08-27'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Arbejdgruppe dokumentation SC - IT' AND dagsorden.IndMøDato = '2010-12-13'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Arkivmøde, Fjernarkivet' AND dagsorden.IndMøDato = '2011-10-20'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = ""Direktørens møder i KL´s kontaktudvalg"" AND dagsorden.IndMøDato = '2012-02-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = ""LBR 2013-2014"" AND dagsorden.IndMøDato = '2014-08-26'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MAG1 ITA IT-Statusmøde FA  IT-Drift' AND dagsorden.IndMøDato = '2004-01-28'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Arbejdsmarkedsafdeling Vest  TR-møde' AND dagsorden.IndMøDato = '2008-03-14'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = ""Arbejdsgruppen for Intranetgruppen MSB"" AND dagsorden.IndMøDato = '2009-05-26'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden, referat
WHERE dagsorden.MøArt = referat.MøArt AND referat.MøArt = 'Møderække vedr. Miniudbud 1, 2 og 3' AND dagsorden.IndMøDato = '2009-12-03' AND referat.DateX = '2009-11-05'