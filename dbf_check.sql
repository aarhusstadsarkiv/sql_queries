select dagsorden_indstilling.afsender, count(*) from fil
inner join indstilling_fil on fil.fil_id = indstilling_fil.fil_id
inner join indstilling on indstilling_fil.indstilling_id = indstilling.indstilling_id
inner join dagsorden_indstilling on indstilling.indstilling_id = dagsorden_indstilling.indstilling_id
inner join dagsorden on dagsorden_indstilling.dagsorden_id = dagsorden.dagsorden_id
where fil.filename = 'tb_t_ba.dbf'
group by dagsorden_indstilling.afsender 
order by count(*) desc