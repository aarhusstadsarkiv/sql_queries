SELECT * 
FROM adhocbeslutning
LEFT JOIN adhoc_adhocbeslutning
ON adhocbeslutning.adhocbeslutning_id = adhoc_adhocbeslutning.adhocbeslutning_id
WHERE adhoc_adhocbeslutning.adhoc_id IS NULL