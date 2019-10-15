SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2014-03-11' AND dagsorden.MøArt = 'Arkivudvalget'

SELECT * 
FROM fil
INNER JOIN moedeforum_fil ON fil.fil_id = moedeforum_fil.fil_id
INNER JOIN moedeforum ON moedeforum_fil.moedeforum_id = moedeforum.moedeforum_id
WHERE fil.fil_id = '1'

SELECT * 
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil on moedeforum_fil.fil_id = fil.fil_id 
WHERE moedeforum.moedeforum_id = '9'

SELECT * 
FROM moedeforum_fil
INNER JOIN moedeforum ON moedeforum_fil.moedeforum_id = moedeforum.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum_fil.moedeforum_id = '475'

SELECT *
FROM fil
INNER JOIN moedeforum_fil ON fil.fil_id = moedeforum_fil.fil_id
INNER JOIN moedeforum ON moedeforum_fil.moedeforum_id = moedeforum.moedeforum_id
WHERE fil.fil_id = '64'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.dagsorden_id ='1'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Arkivarbejdsgruppen' AND dagsorden.dagsorden_id = '310'
SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Webredaktionen - hjemmeside' AND dagsorden.IndMøDato = '2010-04-29'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
WHERE dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'Direktørgruppen'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'Direktørgruppen' AND dagsorden.IndMøDato = '2009-05-13'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = dagsorden.IndMøDato AND dagsorden.MøArt = 'Personaleudvalget' AND dagsorden.IndMøDato = '2006-02-01'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Udvalget for datasikkerhed' AND dagsorden.IndMøDato = '2004-01-20'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'CiriusPatrulje' AND referat.DateX = '2003-04-10'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.referat_id = '33'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = dagsorden.IndMøDato AND dagsorden.MøArt = 'Mangfoldighedsarbejdsgruppe under Ligestillingsudvalget'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Styregruppe for turisme og større byevents' AND referat.DateX = '2009-12-10'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Dataudvalg'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Objektiv sagsbehandling' AND referat.DateX = '2010-09-30'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = '2005-06-24'

SELECT *, referat.Body AS referat_body, bilag.Body AS bilag_body
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Styregruppen for udsatte boligområder' AND referat.DateX = '2011-03-14'

SELECT *, referat.Body AS referat_body, bilag.Body AS bilag_body
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON fil.fil_id = bilag_fil.fil_id
WHERE referat.MøArt = 'Projektgruppe for arbejdsglædeundersøgelsen' AND referat.DateX = '2008-05-19'

SELECT *, referat.Body AS referat_body, bilag.Body AS bilag_body
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON fil.fil_id = bilag_fil.fil_id
WHERE referat.MøArt = 'Personalestyregruppen' AND referat.DateX = '2013-03-18'

SELECT *, referat.Body AS referat_body 
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'VOS ledergruppe' AND referat.DateX = '2007-07-03'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'IT-sikkerhedsudvalget' AND dagsorden.IndMøDato = '2013-02-21'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Arkivarbejdsgruppen' AND dagsorden.IndMøDato = '2005-05-03'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Skabelonløsning arbejdsgruppen' AND dagsorden.IndMøDato = '2006-09-19'

SELECT *
FROM referat
WHERE referat.MøArt = 'Styregruppen for Grøn Database' AND referat.DateX = '2004-11-24'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Projektgruppe vedr. udbud af vaccinationer, helbredskontroller, sundhedsprofiler' AND dagsorden.IndMøDato = '2008-05-14'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Fiskeri- og Lystbådehavnens fremtid' AND dagsorden.IndMøDato = '2005-10-13'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Den Tværfaglige Informationsgruppe'

SELECT *, dagsorden.body AS dagsorden_body
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
WHERE bilag.bilag_id = '2'

SELECT *
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
WHERE bilag.MøArt = 'Den tværmagistratslige koordinationsgruppe for Borgerservice' AND bilag.MøSted = 'Lene Hartig Danielsens Kontor, Skanderborgvej 190'

SELECT *, dagsorden.Body AS dagsorden_body
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.Dagsorden_id = dagsorden.dagsorden_id
WHERE bilag.MøArt = 'IT-udvalget' AND bilag.MøSted = 'Rådhuset, lokale 387' AND bilag.IndMøTil = '_AAK.E.IT.UDVALG'
ORDER BY bilag.Dagsordenpunkt

SELECT *, referat.Body AS referat_body, dagsorden.Body AS dagsorden_body
FROM bilag
INNER JOIN referat_bilag ON bilag.bilag_id = referat_bilag.bilag_id
INNER JOIN referat ON referat_bilag.referat_id = referat.referat_id
INNER JOIN dagsorden ON referat.MøArt = dagsorden.MøArt
WHERE bilag.MøArt = 'Arkivudvalget' AND bilag.CreatedBy = 'Claus Juhl Knudsen' AND referat.DateX = dagsorden.IndMøDato
ORDER BY bilag.MøArt

SELECT *, referat.Body AS referat_body, dagsorden.Body AS dagsorden_body
FROM bilag
INNER JOIN referat_bilag ON bilag.bilag_id = referat_bilag.bilag_id
INNER JOIN referat ON referat_bilag.referat_id = referat.referat_id
INNER JOIN dagsorden ON referat.MøArt = dagsorden.MøArt 
WHERE referat.DateX = dagsorden.IndMøDato AND bilag.MøArt = 'Styregruppe for Borgerservice' AND bilag.bilag_id BETWEEN '2476' AND '2479'
ORDER BY bilag.Dagsordenpunkt

SELECT *, dagsorden.Body AS dagsorden_body
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE bilag.MøArt = 'CiriusPatrulje' AND bilag.bilag_id = 214
ORDER BY bilag.CreatedBy

SELECT *, dagsorden.Body AS dagsorden_body, referat.Body AS referat_body
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMøDato = referat.DateX AND bilag.MøArt = 'CiriusPatrulje' AND bilag.bilag_id = 214
ORDER BY bilag.CreatedBy

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Publiceret' AND moedeforum.MøArt = 'Portalgruppen'

SELECT *
FROM moedeforum
INNER JOIN moedeforum_fil ON moedeforum.moedeforum_id = moedeforum_fil.moedeforum_id
INNER JOIN fil ON moedeforum_fil.fil_id = fil.fil_id
WHERE moedeforum.Publicering = 'Publiceret' AND moedeforum.MøArt = 'Følgegruppe vedrørende KL-analyse af kommunernes administration 2009'

SELECT *
FROM fil
INNER JOIN dagsorden_fil ON fil.fil_id = dagsorden_fil.fil_id
INNER JOIN dagsorden ON dagsorden_fil.dagsorden_id = dagsorden.dagsorden_id
WHERE fil.notes_template_id = 17 AND fil.notes_template_name = 'dagsorden'

SELECT *
FROM fil
INNER JOIN referat_fil ON fil.fil_id = referat_fil.fil_id
INNER JOIN referat ON referat_fil.referat_id = referat.referat_id
WHERE fil.notes_template_id = 958 AND fil.notes_template_name = 'referat'

SELECT *
FROM fil
INNER JOIN referat_fil ON fil.fil_id = referat_fil.fil_id
INNER JOIN referat ON referat_fil.referat_id = referat.referat_id
WHERE referat.MøArt = 'Arbejdsgruppe vedr. mangfoldighed'

SELECT *, dagsorden.Body AS dagsorden_body
FROM fil
INNER JOIN bilag_fil ON fil.fil_id = bilag_fil.fil_id
INNER JOIN bilag ON bilag_fil.bilag_id = bilag.bilag_id
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.Dagsorden_id = dagsorden.dagsorden_id
WHERE fil.notes_template_id = 6388 AND fil.notes_template_name = 'bilag'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Papirløse Møder, Styregruppe' AND dagsorden.IndMøDato = '2013-02-19'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'LOS gruppen'