delete from maglietta_colore;
delete from maglietta_sesso;
delete from maglietta_taglia;
delete from colore;
delete from taglia;
delete from sesso;
delete from maglietta;
delete from cliente;
delete from stampatore;
delete from `user`;
delete from `group`;
delete from `module`;
delete from tema_stampa;
delete from tema;
delete from stampa;


insert into colore (oid, nome, valoreEsadecimale) values (1,'rosso','ff0000');
insert into colore (oid, nome, valoreEsadecimale) values (2,'verde','00ff00');
insert into colore (oid, nome, valoreEsadecimale) values (3,'blu','0000ff');

insert into taglia (oid, nome) values (1,'Small');
insert into taglia (oid, nome) values (2,'Medium');
insert into taglia (oid, nome) values (3,'Large');

insert into sesso (oid, nome) values (1, 'Male');
insert into sesso (oid, nome) values (2, 'Female');


insert into maglietta (oid, nome) values (1, 'T-Shirt 1');
insert into maglietta (oid, nome) values (2, 'T-Shirt 2');


insert into maglietta_colore (maglietta_oid, colore_oid) values (1, 1);
insert into maglietta_colore (maglietta_oid, colore_oid) values (1, 2);
insert into maglietta_colore (maglietta_oid, colore_oid) values (2, 2);
insert into maglietta_colore (maglietta_oid, colore_oid) values (2, 3);


insert into maglietta_sesso (maglietta_oid, sesso_oid) values (1,1);
insert into maglietta_sesso (maglietta_oid, sesso_oid) values (1,2);
insert into maglietta_sesso (maglietta_oid, sesso_oid) values (2,2);


insert into maglietta_taglia (maglietta_oid, taglia_oid) values (1,2);
insert into maglietta_taglia (maglietta_oid, taglia_oid) values (1,3);
insert into maglietta_taglia (maglietta_oid, taglia_oid) values (2,1);
insert into maglietta_taglia (maglietta_oid, taglia_oid) values (2,2);


insert into tema (oid, nome) values (1, 'natale');
insert into tema (oid, nome) values (2, 'pasqua');
insert into tema (oid, nome) values (3, 'halloween');
insert into tema (oid, nome) values (4, 'animali');


insert into stampa (oid, nome) values (1, 'babbo natale');
insert into stampa (oid, nome) values (2, 'coniglio');
insert into stampa (oid, nome) values (3, 'zucca'); 


insert into tema_stampa (stampa_oid, tema_oid) values (1, 1);
insert into tema_stampa (stampa_oid, tema_oid) values (2, 2);
insert into tema_stampa (stampa_oid, tema_oid) values (2, 4);
insert into tema_stampa (stampa_oid, tema_oid) values (3, 3);

insert into module (oid, moduleID, moduleName) values (1,'sv1','Pubblica');
insert into module (oid, moduleID, moduleName) values (2,'sv2','Cliente');
insert into module (oid, moduleID, moduleName) values (3,'sv3','Stampatore');
insert into module (oid, moduleID, moduleName) values (4,'sv4','Amministrazione');

insert into `group` (oid, groupname, module_oid) values (1,'Clienti', 2);
insert into `group` (oid, groupname, module_oid) values (2,'Stampatori', 3);
insert into `group` (oid, groupname, module_oid) values (3,'Amministratori', 4);

insert into group_module (group_oid, module_oid) values (1,2);
insert into group_module (group_oid, module_oid) values (2,3);
insert into group_module (group_oid, module_oid) values (3,4);

insert into `user`
(`OID`,`USERNAME`,`PASSWORD`,`EMAIL`,`GROUP_OID`)
values (3,'amministratore','amministratore','amministratore@example.com',3);

insert into `user`
(`OID`,`USERNAME`,`PASSWORD`,`EMAIL`,`GROUP_OID`)
values (1,'cliente','cliente','cliente@example.com',1);

insert into `cliente`
(`USER_OID`, `NOME`, `COGNOME`, `INDIRIZZO`) VALUES (1,'Mario', 'Rossi', 'Corso G. Garibaldi, 1000, Roma');

insert into `user`
(`OID`,`USERNAME`,`PASSWORD`,`EMAIL`,`GROUP_OID`)
values (2,'stampatore','stampatore','stampatore@example.com',2);

insert into `stampatore`
(`USER_OID`, `MATRICOLA`) VALUES (2, '42');

insert into `user_group`
(`USER_OID`,`GROUP_OID`)
values (1,1);

insert into `user_group`
(`USER_OID`,`GROUP_OID`)
values (2,2);

insert into `user_group`
(`USER_OID`,`GROUP_OID`)
values (3,3);
