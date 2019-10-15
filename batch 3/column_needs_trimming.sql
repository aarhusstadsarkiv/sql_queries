--Might not find everything that needs trimming

SELECT fil.filename
FROM fil
WHERE fil.filename NOT LIKE LTRIM(RTRIM(fil.filename))
