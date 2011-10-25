delete from APP.maglietta_colore;
delete from APP.maglietta_sesso;
delete from APP.maglietta_taglia;
delete from APP.colore;
delete from APP.taglia;
delete from APP.sesso;
delete from APP.maglietta;
delete from APP.CLIENTE;
delete from APP.STAMPATORE;
delete from APP."USER";
delete from APP."GROUP";
delete from APP.MODULE;
delete from APP.tema_stampa;
delete from APP.tema;
delete from APP.stampa;


insert into APP.colore (oid, nome, valoreEsadecimale) values (1,'rosso','ff0000');
insert into APP.colore (oid, nome, valoreEsadecimale) values (2,'verde','00ff00');
insert into APP.colore (oid, nome, valoreEsadecimale) values (3,'blu','0000ff');

insert into APP.taglia (oid, nome) values (1,'Small');
insert into APP.taglia (oid, nome) values (2,'Medium');
insert into APP.taglia (oid, nome) values (3,'Large');

insert into APP.sesso (oid, nome) values (1, 'Male');
insert into APP.sesso (oid, nome) values (2, 'Female');


insert into APP.maglietta (oid, nome) values (1, 'T-Shirt 1');
insert into APP.maglietta (oid, nome) values (2, 'T-Shirt 2');


insert into APP.maglietta_colore (maglietta_oid, colore_oid) values (1, 1);
insert into APP.maglietta_colore (maglietta_oid, colore_oid) values (1, 2);
insert into APP.maglietta_colore (maglietta_oid, colore_oid) values (2, 2);
insert into APP.maglietta_colore (maglietta_oid, colore_oid) values (2, 3);


insert into APP.maglietta_sesso (maglietta_oid, sesso_oid) values (1,1);
insert into APP.maglietta_sesso (maglietta_oid, sesso_oid) values (1,2);
insert into APP.maglietta_sesso (maglietta_oid, sesso_oid) values (2,2);


insert into APP.maglietta_taglia (maglietta_oid, taglia_oid) values (1,2);
insert into APP.maglietta_taglia (maglietta_oid, taglia_oid) values (1,3);
insert into APP.maglietta_taglia (maglietta_oid, taglia_oid) values (2,1);
insert into APP.maglietta_taglia (maglietta_oid, taglia_oid) values (2,2);


insert into APP.tema (oid, nome) values (1, 'natale');
insert into APP.tema (oid, nome) values (2, 'pasqua');
insert into APP.tema (oid, nome) values (3, 'halloween');
insert into APP.tema (oid, nome) values (4, 'animali');


insert into APP.stampa (oid, nome) values (1, 'babbo natale');
insert into APP.stampa (oid, nome) values (2, 'coniglio');
insert into APP.stampa (oid, nome) values (3, 'zucca'); 


insert into APP.tema_stampa (stampa_oid, tema_oid) values (1, 1);
insert into APP.tema_stampa (stampa_oid, tema_oid) values (2, 2);
insert into APP.tema_stampa (stampa_oid, tema_oid) values (2, 4);
insert into APP.tema_stampa (stampa_oid, tema_oid) values (3, 3);

insert into APP.module (oid, moduleID, moduleName) values (1,'sv1','Pubblica');
insert into APP.module (oid, moduleID, moduleName) values (2,'sv2','Cliente');
insert into APP.module (oid, moduleID, moduleName) values (3,'sv3','Stampatore');
insert into APP.module (oid, moduleID, moduleName) values (4,'sv4','Amministrazione');

insert into APP."GROUP" (oid, groupname, module_oid) values (1,'Clienti', 2);
insert into APP."GROUP" (oid, groupname, module_oid) values (2,'Stampatori', 3);
insert into APP."GROUP" (oid, groupname, module_oid) values (3,'Amministratori', 4);

insert into APP.group_module (group_oid, module_oid) values (1,2);
insert into APP.group_module (group_oid, module_oid) values (2,3);
insert into APP.group_module (group_oid, module_oid) values (3,4);

insert into APP."USER"
("OID","USERNAME","PASSWORD","EMAIL","GROUP_OID")
values (3,'amministratore','amministratore','amministratore@example.com',3);

insert into APP."USER"
("OID","USERNAME","PASSWORD","EMAIL","GROUP_OID")
values (1,'cliente','cliente','cliente@example.com',1);

insert into APP."CLIENTE"
("USER_OID", "NOME", "COGNOME", "INDIRIZZO") VALUES (1,'Mario', 'Rossi', 'Corso G. Garibaldi, 1000, Roma');

insert into APP."USER"
("OID","USERNAME","PASSWORD","EMAIL","GROUP_OID")
values (2,'stampatore','stampatore','stampatore@example.com',2);

insert into APP."STAMPATORE"
("USER_OID", "MATRICOLA") VALUES (2, '42');

insert into "APP"."USER_GROUP"
("USER_OID","GROUP_OID")
values (1,1);

insert into "APP"."USER_GROUP"
("USER_OID","GROUP_OID")
values (2,2);

insert into "APP"."USER_GROUP"
("USER_OID","GROUP_OID")
values (3,3);
