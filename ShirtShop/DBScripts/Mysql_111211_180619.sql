-- Ordine.prezzoTotale [ent9#att39]
create view `ordine_prezzototale_view` as
select AL1.`oid` as `oid`, sum(AL2.`prezzototale`) + AL1.`spesespedizione` as `der_attr`
from  `ordine` AL1 
               left outer join `rigaordine` AL2 on AL1.`oid`=AL2.`ordine_oid`
group by AL1.`oid`, AL1.`spesespedizione`;


