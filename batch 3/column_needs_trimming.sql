SELECT fil.filename
FROM fil
WHERE fil.filename NOT LIKE LTRIM(RTRIM(fil.filename))