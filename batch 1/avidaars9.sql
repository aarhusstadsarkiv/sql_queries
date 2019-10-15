SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Publiceret' AND moedeforum.moedeforum_id = '1'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Publiceret' AND moedeforum.MøArt = 'KBIT - netværk for IT i Kultur og Borgerservice'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Publiceret' AND moedeforum.MøArt = 'Borgerservice - Snitfladeanalyse - Styregruppen - mellem Borgerbetjeningen og Backoffice'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Ej publiceret' AND moedeforum.MøArt = 'MED - CØP'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Ej publiceret' AND moedeforum.møart = 'Kommunikationsnetværket'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøde' AND dagsorden.IndMøDato = '2006-01-24'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'LB - Ledelsesteamet' AND dagsorden.IndMøDato = '2012-09-06'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MED - 2 Decentrale (idræts)anlæg' AND dagsorden.IndMøDato = '2005-01-14'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde. Symfoniorkesteret og Musikhuset Aarhus' AND dagsorden.IndMøDato = '2012-01-20'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Rådmandsmøde. Symfoniorkesteret og Musikhuset Aarhus'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Flygtninge- og indvandrernetværket' AND dagsorden.IndMøDato = '2004-01-13'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Sikkerhedsudvalget i Borgerservice'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'HovedMEDudvalget' AND dagsorden.IndMøDato = '2006-10-02'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Sikkerhedsgruppen i Vestergade 55'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'BoB DOKK1-koordination' AND dagsorden.IndMøDato = '2014-09-08'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'BoB DOKK1-koordination' AND dagsorden.IndMøDato = '2014-04-09'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Hoved Arbejdsmiljø Udvalg' AND dagsorden.IndMøDato = '2014-05-13'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'LB - Ledelsesteamet' AND dagsorden.IndMøDato = '2014-03-20'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'FK - Ledelsesmøder'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Kontormøde i Staben' AND dagsorden.IndMøDato = '2008-11-19'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Borgerservice - Pas-kørekort Styregruppen' AND dagsorden.IndMøDato = '2006-09-25'

SELECT *, dagsorden.Body AS DB, bilag.Body AS BB
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.Fortroligt IS NULL AND dagsorden.MøArt = 'Borgerservice - Medarbejdermøde, Telefonien'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Kvartalschefmøde' AND referat.DateX = '2006-04-28'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'MED - 5 Klubber' AND referat.DateX = '2005-09-28'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - Chefgruppemøde' AND referat.DateX = '2011-06-10'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - Backoffice, chefmøde' AND referat.DateX = '2009-08-26'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Netværket vedr. miljøområdet'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - Snitfladeanalyse - Styregruppen - mellem Borgerbetjeningen og Backoffice' AND referat.DateX = '2009-05-27'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - Frontforbedringsgruppen' AND referat.DateX = '2007-05-22'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - Implementeringsgruppe vedr. adgang til data og systemer'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - MEDudvalg' AND referat.DateX = '2006-01-16'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'MED - 3 Musikskolen'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice og Biblioteker - Fællessekretariatets kontormøde'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'BoB DOKK1-koordination' AND referat.DateX = '2014-04-09'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'KBIT - netværk for IT i Kultur og Borgerservice' AND referat.DateX = '2009-06-09'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'MED - Kulturforvaltningen' AND referat.DateX = '2011-06-14'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'HB - TVÆR' AND referat.DateX = '2013-06-24'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'HB - TVÆR-Pro' AND referat.DateX = '2013-08-28'

SELECT *, referat.Body AS RB, bilag.Body AS BB
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Integrationsnetværket' AND referat.DateX = '2013-09-10'

SELECT *, referat.Body AS RB, bilag.Body AS BB, rfil.fil_id AS rfid, rfil.notes_template_id AS rntid, rfil.notes_template_name AS rtmn, rfil.filename AS rfn, bfil.fil_id AS bfid, bfil.notes_template_id AS bntid, bfil.notes_template_name AS btmn, bfil.filename AS bfn
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.fil_id
INNER JOIN fil AS rfil ON referat_fil.fil_id = rfil.fil_id
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil AS bfil ON bilag_fil.fil_id = bfil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'HovedMEDudvalget' AND referat.DateX = '2013-12-10'

SELECT *, referat.Body AS RB, bilag.Body AS BB, rfil.fil_id AS rfid, rfil.notes_template_id AS rntid, rfil.notes_template_name AS rtmn, rfil.filename AS rfn, bfil.fil_id AS bfid, bfil.notes_template_id AS bntid, bfil.notes_template_name AS btmn, bfil.filename AS bfn
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.fil_id
INNER JOIN fil AS rfil ON referat_fil.fil_id = rfil.fil_id
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil AS bfil ON bilag_fil.fil_id = bfil.fil_id
WHERE referat.Fortroligt IS NULL AND referat.MøArt = 'Borgerservice - MEDudvalg' AND referat.DateX = '2013-10-24'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'KBintra' AND dagsorden.IndMøDato = '2007-09-10'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.Fortroligt IS NOT NULL AND dagsorden.MøArt = 'Rådmandsmøde. Symfoniorkesteret og Musikhuset Aarhus'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.Body IS NOT NULL AND referat.body IS NOT NULL AND dagsorden.MøArt = 'Borgerservice - Familieydelsen, personalemøder' AND dagsorden.IndMøDato = '2011-01-06'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.Body IS NOT NULL AND referat.body IS NOT NULL AND dagsorden.MøArt = 'Hoved Arbejdsmiljø Udvalg' AND dagsorden.IndMøDato =  '2014-08-29'