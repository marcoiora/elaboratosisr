-- Maglietta.numeroConfigurazioni [ent1#att55]
create view "APP"."MAGLIETTA_NUMEROCONFIGURAZIONI" as
select AL1."OID" as "OID", count(distinct AL2."OID") as "DER_ATTR"
from  "APP"."MAGLIETTA" AL1 
               left outer join "APP"."CONFIGURAZIONE" AL2 on AL1."OID"=AL2."MAGLIETTA_OID"
group by AL1."OID";


