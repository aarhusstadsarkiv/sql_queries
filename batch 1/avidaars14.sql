SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2006-03-16' AND dagsorden.MøArt = 'MEDudvalget'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Afdelingsmøde'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMøDato = '2006-10-10'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.møart = 'K-møde' AND dagsorden.IndMøDato = '2007-01-15'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.indmødato = '2005-10-25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Afdelingsmøde' AND dagsorden.IndMøDato = '2004-05-24'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'K-møde' AND dagsorden.IndMøDato = '2005-01-10'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2006-04-20'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Systemejerskab Digital forvaltning' AND dagsorden.IndMøDato = '2005-06-03'

SELECT *, dagsorden.Body AS dagsordenbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
LEFT JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2006-03-16'

SELECT dagsorden.MøArt, dagsorden.IndMøDato, dagsordenfil.fil_id AS dagsordenfilid, dagsordenfil.notes_template_id AS dagsordenfiltemplateid, dagsordenfil.notes_template_name AS dagsordentemplatename, dagsordenfil.filename AS dagsordenfilename, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody, bilagfil.fil_id AS bilagfilid, bilagfil.notes_template_id AS bilagtemplateid, bilagfil.notes_template_name AS bilagtemplatename, bilagfil.filename AS bilagfilename
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil AS dagsordenfil ON dagsorden_fil.fil_id = dagsordenfil.fil_id
LEFT JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
LEFT JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil AS bilagfil ON bilag_fil.fil_id = bilagfil.fil_id
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2006-04-20'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2008-01-07'

SELECT *, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
LEFT JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
LEFT JOIN fil ON bilag_fil.fil_id = fil.fil_id
LEFT JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'Systemejerskab Digital forvaltning' AND dagsorden.IndMøDato = '2007-10-29'

SELECT *, dagsorden.Body AS db, referat.Body AS rb
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2006-12-15'