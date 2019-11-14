SELECT *
FROM adhocbeslutning
LEFT JOIN adhoc_adhocbeslutning
ON adhocbeslutning.adhocbeslutning_id = adhoc_adhocbeslutning.adhocbeslutning_id
LEFT JOIN adhoc
ON adhoc_adhocbeslutning.adhoc_id = adhoc.adhoc_id
WHERE adhoc.adhoc_id IS NULL AND adhocbeslutning.BeslutResumeString IS NOT 'Beslutning ikke frigivet' AND adhocbeslutning.CreatedDate = '2013-10-30' AND adhocbeslutning.BeslutResumeString LIKE 'Udvalget ønskede oplyst proceduren for opsætning af vejbelysning på Bredgade i forbindelse%'
