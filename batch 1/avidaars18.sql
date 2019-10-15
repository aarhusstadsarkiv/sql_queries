SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMøDato = referat.DateX AND dagsorden.IndMøDato = '2004-09-20'

SELECT *, dagsorden.Body AS dagsorden_body, bilag.Body AS bilag_body
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMødato = '2004-05-24'

SELECT *, dagsorden.Body AS dagsorden_body, bilag.Body AS bilag_body
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.IndMødato = '2005-04-18'

SELECT *, dagsorden.Body AS dagsorden_body, bilag.Body AS bilag_body
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Ledermøde Per Jensen' AND dagsorden.IndMøDato = '2008-03-03'

SELECT *, dagsorden.Body AS dagsorden_body, bilag.Body AS bilag_body
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Fælles kontormøde i Personalekontoret.' AND dagsorden.IndMøDato = '2006-09-11'

SELECT *, dagsorden.Body AS dagsorden_body, bilag.Body AS bilag_body
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'MEDudvalget' AND dagsorden.IndMøDato = '2004-05-18'

SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2005-01-10' AND dagsorden.MøArt = 'Ledermøde'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = '2007-09-14'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = '2004-03-09'

SELECT dagsorden.MøArt, dagsorden.IndMøDato, dagsordenfil.fil_id AS dagsordenfil, dagsordenfil.notes_template_id AS dagsordenid, dagsordenfil.notes_template_name AS dagsordenname, dagsordenfil.filename AS dagsordenfilename, dagsorden.Body AS dagsorden_body, referatfil.fil_id AS referatfil, referatfil.notes_template_id AS referatid, referatfil.notes_template_name AS referatname, referatfil.filename AS referatfilename, referat.Body AS referat_body
FROM referat
INNER JOIN dagsorden ON referat.MøArt = dagsorden.MøArt
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil AS dagsordenfil ON dagsorden_fil.fil_id = dagsordenfil.fil_id
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil AS referatfil ON referat_fil.fil_id = referatfil.fil_id
WHERE referat.DateX = '2004-03-09' AND dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'MEDudvalget'

SELECT dagsorden.MøArt, dagsorden.IndMøDato, dagsorden.Body AS dagsordenbody, bilag.Body AS bilagbody, bilagfil.fil_id AS bilagfilid, bilagfil.notes_template_id AS bilagid, bilagfil.notes_template_name AS bilagtemplate, bilagfil.filename AS bilagfilename, referat.Body AS referatbody, referatfil.fil_id AS referatfilid, referatfil.notes_template_id AS referatid, referatfil.notes_template_name AS referattemplate, referatfil.filename AS referatfilename
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil AS bilagfil ON bilag_fil.fil_id = bilagfil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil AS referatfil ON referat_fil.fil_id = referatfil.fil_id
WHERE referat.DateX = '2007-09-14' AND dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'MEDudvalget'

SELECT dagsorden.dagsorden_id, dagsorden.indmødato, dagsorden.MøArt, dagsorden.Body AS dagsordenbody, referat.referat_id, referat.Body AS referatbody
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
WHERE dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'Ledermøde Per Jensen'
ORDER BY dagsorden.IndMøDato

SELECT dagsorden.dagsorden_id, dagsorden.indmødato, dagsorden.MøArt, dagsorden.Body AS dagsordenbody, referat.referat_id, referat.Body AS referatbody
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
WHERE dagsorden.IndMøDato = referat.DateX AND dagsorden.MøArt = 'MEDudvalget'
ORDER BY dagsorden.IndMøDato

SELECT *
FROM fil
INNER JOIN referat_fil ON fil.fil_id = referat_fil.fil_id
INNER JOIN referat ON referat_fil.referat_id = referat.referat_id
WHERE fil.notes_template_name = 'referat' AND fil.notes_template_id = '249'

SELECT *, bilag.Body AS bilagbody, dagsorden.Body AS dagsordenbody
FROM fil
INNER JOIN bilag_fil ON fil.fil_id = bilag_fil.fil_id
INNER JOIN bilag ON bilag_fil.bilag_id = bilag.bilag_id
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
WHERE fil.notes_template_name = 'bilag' AND fil.notes_template_id = '44'

SELECT *
FROM fil
INNER JOIN dagsorden_fil ON fil.fil_id = dagsorden_fil.fil_id
INNER JOIN dagsorden ON dagsorden_fil.dagsorden_id = dagsorden.dagsorden_id
WHERE fil.notes_template_name = 'dagsorden' AND fil.notes_template_id = '89'

SELECT *, bilag.Body AS bilagbody, dagsorden.Body AS dagsordenbody
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
WHERE bilag.MøArt = 'Ledermøde, Personaleafdelingen' AND bilag.Møsted = 'Rådhuset, lokale 387'

SELECT *, bilag.Body AS bilagbody, dagsorden.Body AS dagsordenbody, referat.Body AS referatbody
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt
WHERE bilag.MøArt = 'Ledermøde, Personaleafdelingen' AND bilag.Møsted = 'Rådhuset, lokale 387' AND dagsorden.IndMøDato = referat.DateX

SELECT *, bilag.Body AS bilagbody, dagsorden.Body AS dagsordenbody
FROM bilag
INNER JOIN dagsorden_bilag ON bilag.bilag_id = dagsorden_bilag.bilag_id
INNER JOIN dagsorden ON dagsorden_bilag.dagsorden_id = dagsorden.dagsorden_id
WHERE bilag.MøArt = 'Ledermøde'