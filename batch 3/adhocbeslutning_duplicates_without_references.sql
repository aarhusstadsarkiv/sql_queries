SELECT count(*), adhocbeslutning.BeslutResume
FROM adhocbeslutning
LEFT JOIN adhoc_adhocbeslutning
ON adhocbeslutning.adhocbeslutning_id = adhoc_adhocbeslutning.adhocbeslutning_id
LEFT JOIN adhoc
ON adhoc_adhocbeslutning.adhoc_id = adhoc.adhoc_id
WHERE adhoc.adhoc_id IS NULL AND adhocbeslutning.BeslutResume IS NOT 'Beslutning ikke frigivet'
GROUP BY adhocbeslutning.BeslutResume
ORDER BY count(*) desc