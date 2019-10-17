SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2013-02-22' AND dagsorden.MøArt = 'IT-Fælles'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 LES - Hoved-MED-udvalget' AND dagsorden.IndMøDato = '2008-11-25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'BU - Forvaltningsmøder' AND dagsorden.IndMøDato = '2004-09-15'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Børn- og Voksne Superbrugere' AND dagsorden.IndMøDato = '2010-02-25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'IT koordinering med ledelsesinformation' AND dagsorden.IndMøDato = '2011-12-07'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'KMD Sag ugentligt koordineringsmøde SOC-IT' AND dagsorden.IndMøDato = '2011-05-19'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'DIREKTIONSMØDE' AND dagsorden.IndMøDato = '2009-11-26'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 DIR - Ledermøde' AND dagsorden.IndMøDato = '2004-04-22'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB, bilag.Overskrift AS OS
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 SOC-Chefmøder' AND dagsorden.IndMøDato = '2009-12-18'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'IT-Chefmøde' AND dagsorden.IndMøDato = '2010-09-14'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ydelsescenter Ledelsesmøde' AND dagsorden.IndMøDato = '2010-10-19'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG 1 - HMU Møde (ipad version)' AND dagsorden.IndMøDato = '2012-08-27'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde LUKKET' AND dagsorden.IndMøDato = '2012-09-12'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 ØA - MED-udvalgsmøde' AND dagsorden.IndMøDato = '2004-05-05'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Urbanprogrammets Styre- og Kontaktpersongruppe' AND dagsorden.IndMøDato = '2004-09-21'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Byrådsmøder, (Rådmandens supplerende materiale)' AND dagsorden.IndMøDato = '2012-08-29'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'It Test eDagsorden' AND dagsorden.IndMøDato = '2012-02-08'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Strategisk chefforum' AND dagsorden.IndMøDato = '2011-02-24'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 ØA - Husgruppemøde Jægergården' AND dagsorden.IndMøDato = '2011-04-04'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'YdelsescenterMEDudvalg' AND dagsorden.IndMøDato = '2010-06-08'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 ITA Cirius-Superbrugermøde' AND dagsorden.IndMøDato = '2006-05-31'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id 
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id 
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MAG1 ØS - Udvalget for Sikkerhedsforhold på Jægergården' AND dagsorden.IndMøDato IN ('2009-04-22', '2009-09-10')

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Servicecenter for Økonomi - chefmøder' AND referat.DateX = '2010-06-03'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'IT- Kvartalsmøder' AND referat.DateX = '2009-08-31'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'IT koordinering med ledelsesinformation' AND referat.DateX = '2011-06-22'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 ØSC Arbejdsmiljøgruppen' AND referat.DateX IN ('2010-08-17', '2010-09-20', '2011-02-15', '2011-02-28', '2010-03-31', '2010-01-31')

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 LES - Det Sociale Forbrugerråd' AND referat.DateX = '2010-09-07'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'eDoc styregruppen' ANd referat.DateX = '2012-02-07'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 SOC - Udvidet chefmøde' AND referat.DateX = '2011-01-05'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'IT-Fælles' AND referat.DateX = '2010-06-04'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Ydelsescenter Ledelsesmøde' AND referat.DateX = '2011-12-06'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Servicecentret Ledelsessekretariat og Kommunikation-personalemøde' AND referat.DateX = '2010-10-26'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'YdelsescenterMEDudvalg' AND referat.DateX = '2012-10-23'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'CSU - Med-udvalget' AND referat.DateX = '2012-12-12'

SELECT *, bilag.Overskrift AS OS, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id 
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MAG1 ØS - Udvalget for Sikkerhedsforhold på Jægergården' AND referat.DateX = '2009-09-10'

SELECT *
FROM dagsorden
LEFT JOIN referat ON dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = referat.MøArt
WHERE referat.referat_id IS NULL

SELECT *
FROM referat
LEFT JOIN dagsorden ON referat.DateX = dagsorden.IndMøDato AND referat.MøArt = dagsorden.MøArt
WHERE dagsorden.dagsorden_id IS NULL

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Budgetforhandlinger B2013' AND dagsorden.IndMøDato = '2012-09-17'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'BEF MED-udvalgsmøde' AND dagsorden.IndMøDato = '2013-03-11'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MAG1 LES - Fællesmøder mellem Århus Politi og Århus Kommunes Social- og Beskæftigelsesforvaltning'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MSB - Arbejdsgruppen for systemafhængigheder og processer for mini udbud 1, 2 og 3'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MAG1 ITA IT-Statusmøde AMA  IT-Drift' AND dagsorden.IndMøDato = '2004-01-28'

SELECT *, dagsorden.Body AS DB, referat.Body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Superbrugerforum KMD Sag Socialforvaltningen' AND dagsorden.IndMøDato = '2011-03-23'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt LIKE 'Arbejdgruppe dokumentation SC - IT' AND dagsorden.IndMøDato = '2010-12-01'

SELECT *, bilag.Overskrift AS OS, dagsorden.Body AS DB, bilag.Body AS BB, referat.body AS RB
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt LIKE 'MAG1 SOC - Udvidet chefmøde (Forvaltningsmøde)' AND dagsorden.IndMøDato = '2010-03-12'