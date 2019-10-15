SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2005-06-09' AND dagsorden.MøArt = 'Fredagsmødet'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Fredagsmødet'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MED-udvalgsmøde i Økonomisk Afdeling' AND dagsorden.IndMøDato = '2002-10-10'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE fil.filename LIKE 'dagsorden.lwp'

SELECT *, dagsorden.Body AS dagsordenbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX

SELECT *, dagsorden.Body AS dagsordenbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Chefmøder; koordinering indenfor planlægning og økonomiske opgaveområder' AND dagsorden.IndMøDato = '2008-02-07'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MED-udvalgsmøde i Økonomisk Afdeling' AND referat.DateX = '2002-12-03'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'MED-udvalgsmøde i Økonomisk Afdeling' AND referat.DateX = '2002-12-03'

SELECT *, referat.Body AS referatbody, dagsorden.Body AS dagsordenbody
FROM referat
INNER JOIN dagsorden ON referat.MøArt = dagsorden.MøArt AND referat.DateX = dagsorden.IndMøDato
WHERE referat.MøArt = 'MED-udvalgsmøde i Økonomisk Afdeling' AND referat.DateX = '2004-03-24'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX

SELECT dagsorden.MøArt, dagsorden.IndMødato, dagsorden.Body AS dagsordenbody, bilagfil.fil_id AS bilagfilid, bilagfil.notes_template_id AS bilagtemplateid, bilagfil.notes_template_name AS bilagtemplatename, bilagfil.filename AS bilagfilename, bilag.Body AS bilagbody, referatfil.fil_id AS referatfilid, referatfil.notes_template_id AS referattemplateid, referatfil.notes_template_name AS referattemplatename, referatfil.filename AS referatfilename, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil AS bilagfil ON bilag_fil.fil_id = bilagfil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil AS referatfil ON referat_fil.fil_id = referatfil.fil_id

SELECT dagsorden.MøArt, dagsorden.IndMøDato, dagsorden.Body AS dagsordenbody
FROM dagsorden
WHERE dagsorden.MøArt = 'Fredagsmødet' AND dagsorden.IndMøDato = '2005-06-09'
UNION ALL
SELECT referat.MøArt, referat.DateX, referat.Body AS referatbody
FROM referat
WHERE referat.MøArt = 'Fredagsmødet' AND referat.DateX = '2005-06-09'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE bilag.bilag_id = '23'
