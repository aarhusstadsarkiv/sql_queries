SELECT dagsorden.MøArt mødeforum, dagsorden.IndMøDato mødedato, dagsorden.dagsorden_id, referat.referat_id 
FROM dagsorden 
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX 
WHERE dagsorden.IndMøDato = '2010-11-01' AND dagsorden.MøArt = 'Brugerudvalg'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.dagsorden_id = '20'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøder' AND dagsorden.IndMøDato = '2009-09-24'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.dagsorden_id = '25'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Brugerudvalg' AND dagsorden.IndMøDato = '2010-09-06'

SELECT *
FROM dagsorden
INNER JOIN dagsorden_bilag ON dagsorden.dagsorden_id = dagsorden_bilag.Dagsorden_id
INNER JOIN bilag ON dagsorden_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Brugerudvalg' AND dagsorden.IndMøDato = '2011-06-06'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.referat_id = '66'

SELECT *
FROM referat
INNER JOIN referat_bilag ON referat.referat_id = referat_bilag.referat_id
INNER JOIN bilag ON referat_bilag.bilag_id = bilag.bilag_id
INNER JOIN bilag_fil ON bilag.bilag_id = bilag_fil.bilag_id
INNER JOIN fil ON bilag_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'Brugerudvalg' AND referat.DateX = '2010-11-01'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.MøArt = 'teammøde i B2'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.DateX = '2009-01-07'

SELECT *
FROM referat
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil ON referat_fil.fil_id = fil.fil_id
WHERE referat.referat_id = '74'

SELECT *, referat.Body AS referatbody, dagsorden.Body AS dagsordenbody
FROM referat
INNER JOIN dagsorden ON referat.MøArt = dagsorden.MøArt AND referat.DateX = dagsorden.IndMøDato
WHERE referat.DateX = '2008-06-03'

SELECT *, referat.Body AS referatbody, dagsorden.Body AS dagsordenbody
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
WHERE dagsorden.IndMøDato = '2008-06-03'

SELECT dagsorden.MøArt, dagsorden.indmødato, dagsordenfil.fil_id AS dagsordenfilid, dagsordenfil.notes_template_id AS dagsordenfiltemplateid, dagsordenfil.notes_template_name AS dagsordentemplatename, dagsordenfil.filename AS dagsordenfilename, dagsorden.Body AS dagsordenbody, referatfil.fil_id, referatfil.notes_template_id AS referatfiltemplateid, referatfil.notes_template_name AS referatfiltemplatename, referatfil.filename AS referatfilename, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil AS dagsordenfil ON dagsorden_fil.fil_id = dagsordenfil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil AS referatfil ON referat_fil.fil_id = referatfil.fil_id
WHERE dagsorden.MøArt = 'Chefmøder'

SELECT DISTINCT dagsorden.MøArt, dagsorden.indmødato, dagsordenfil.fil_id AS dagsordenfilid, dagsordenfil.notes_template_id AS dagsordenfiltemplateid, dagsordenfil.notes_template_name AS dagsordentemplatename, dagsordenfil.filename AS dagsordenfilename, dagsorden.Body AS dagsordenbody, referatfil.fil_id, referatfil.notes_template_id AS referatfiltemplateid, referatfil.notes_template_name AS referatfiltemplatename, referatfil.filename AS referatfilename, referat.Body AS referatbody
FROM dagsorden
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil AS dagsordenfil ON dagsorden_fil.fil_id = dagsordenfil.fil_id
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN referat_fil ON referat.referat_id = referat_fil.referat_id
INNER JOIN fil AS referatfil ON referat_fil.fil_id = referatfil.fil_id
WHERE dagsorden.MøArt = 'LønhusMED' AND dagsorden.IndMøDato = '2009-01-21' AND referat.MøArt = 'LønhusMED' AND referat.DateX = '2009-01-21'

SELECT *
FROM dagsorden
INNER JOIN referat ON dagsorden.MøArt = referat.MøArt AND dagsorden.IndMøDato = referat.DateX
INNER JOIN dagsorden_fil ON dagsorden.dagsorden_id = dagsorden_fil.dagsorden_id
INNER JOIN fil ON dagsorden_fil.fil_id = fil.fil_id
WHERE dagsorden.MøArt = 'Chefmøder' AND dagsorden.IndMødato = '2011-09-28'