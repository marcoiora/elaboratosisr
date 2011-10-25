-- Group [Group]
create table "APP"."GROUP" (
   "OID"  integer  not null,
   "GROUPNAME"  varchar(255),
  primary key ("OID")
);


-- Module [Module]
create table "APP"."MODULE" (
   "OID"  integer  not null,
   "MODULEID"  varchar(255),
   "MODULENAME"  varchar(255),
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "USERNAME"  varchar(255),
   "PASSWORD"  varchar(255),
   "EMAIL"  varchar(255),
  primary key ("OID")
);


-- Maglietta [ent1]
create table "APP"."MAGLIETTA" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
   "DESCRIZIONE"  clob(10000),
   "MANICA"  varchar(255),
   "COLLO"  varchar(255),
   "STAMPABILEFRONTE"  smallint,
   "STAMPABILERETRO"  smallint,
   "MATERIALE"  varchar(255),
   "PREZZO"  double,
  primary key ("OID")
);


-- Cliente [ent10]
create table "APP"."CLIENTE" (
   "USER_OID"  integer  not null,
   "NOME"  varchar(255),
   "COGNOME"  varchar(255),
   "INDIRIZZO"  varchar(255),
  primary key ("USER_OID")
);


-- Pagina [ent11]
create table "APP"."PAGINA" (
   "OID"  integer  not null,
   "TITOLO"  varchar(255),
   "TESTOHTML"  clob(10000),
   "HOME"  smallint,
  primary key ("OID")
);


-- Stampatore [ent12]
create table "APP"."STAMPATORE" (
   "USER_OID"  integer  not null,
   "MATRICOLA"  varchar(255),
  primary key ("USER_OID")
);


-- Template [ent13]
create table "APP"."TEMPLATE" (
   "MAGLIETTA_OID"  integer  not null,
   "DIMENSIONEFRONTE"  double,
   "DIMENSIONERETRO"  double,
  primary key ("MAGLIETTA_OID")
);


-- Tema [ent14]
create table "APP"."TEMA" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
  primary key ("OID")
);


-- Colore [ent2]
create table "APP"."COLORE" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
   "VALOREESADECIMALE"  varchar(255),
  primary key ("OID")
);


-- Taglia [ent3]
create table "APP"."TAGLIA" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
  primary key ("OID")
);


-- Sesso [ent4]
create table "APP"."SESSO" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
  primary key ("OID")
);


-- Foto [ent5]
create table "APP"."FOTO" (
   "OID"  integer  not null,
   "COMMENTO"  varchar(255),
   "IMMAGINE"  varchar(255),
  primary key ("OID")
);


-- Stampa [ent6]
create table "APP"."STAMPA" (
   "OID"  integer  not null,
   "NOME"  varchar(255),
   "DESCRIZIONE"  varchar(255),
   "ANTEPRIMA"  varchar(255),
   "IMMAGINEHD"  varchar(255),
   "PREZZOBASE"  varchar(255),
  primary key ("OID")
);


-- Configurazione [ent7]
create table "APP"."CONFIGURAZIONE" (
   "OID"  integer  not null,
   "DIMENSIONEFRONTE"  double,
   "DIMENSIONERETRO"  double,
  primary key ("OID")
);


-- RigaOrdine [ent8]
create table "APP"."RIGAORDINE" (
   "OID"  integer  not null,
   "PREZZOSINGOLO"  varchar(255),
   "QUANTITA"  varchar(255),
   "PREZZOTOTALE"  double,
  primary key ("OID")
);


-- Ordine [ent9]
create table "APP"."ORDINE" (
   "OID"  integer  not null,
   "DATAORACONFERMA"  timestamp,
   "DATAORAPRESAINCARICO"  timestamp,
   "DATAORASPEDIZIONE"  timestamp,
   "PREZZOTOTALE"  double,
   "SPESESPEDIZIONE"  double,
   "STATO"  varchar(255),
  primary key ("OID")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "APP"."GROUP"  add column  "MODULE_OID"  integer;
alter table "APP"."GROUP"   add constraint FK_GROUP_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");


-- Group_Module [Group2Module_Module2Group]
create table "APP"."GROUP_MODULE" (
   "GROUP_OID"  integer not null,
   "MODULE_OID"  integer not null,
  primary key ("GROUP_OID", "MODULE_OID")
);
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");
alter table "APP"."GROUP_MODULE"   add constraint FK_GROUP_MODULE_MODULE foreign key ("MODULE_OID") references "APP"."MODULE" ("OID");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "APP"."USER"  add column  "GROUP_OID"  integer;
alter table "APP"."USER"   add constraint FK_USER_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


-- User_Group [User2Group_Group2User]
create table "APP"."USER_GROUP" (
   "USER_OID"  integer not null,
   "GROUP_OID"  integer not null,
  primary key ("USER_OID", "GROUP_OID")
);
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_USER foreign key ("USER_OID") references "APP"."USER" ("OID");
alter table "APP"."USER_GROUP"   add constraint FK_USER_GROUP_GROUP foreign key ("GROUP_OID") references "APP"."GROUP" ("OID");


-- Maglietta_Colore [rel1]
create table "APP"."MAGLIETTA_COLORE" (
   "MAGLIETTA_OID"  integer not null,
   "COLORE_OID"  integer not null,
  primary key ("MAGLIETTA_OID", "COLORE_OID")
);
alter table "APP"."MAGLIETTA_COLORE"   add constraint FK_MAGLIETTA_COLORE_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");
alter table "APP"."MAGLIETTA_COLORE"   add constraint FK_MAGLIETTA_COLORE_COLORE foreign key ("COLORE_OID") references "APP"."COLORE" ("OID");


-- Configurazione_StampaFronte [rel11]
alter table "APP"."CONFIGURAZIONE"  add column  "STAMPA_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_STAMPA_2 foreign key ("STAMPA_OID") references "APP"."STAMPA" ("OID");


-- Configurazione_StampaRetro [rel12]
alter table "APP"."CONFIGURAZIONE"  add column  "STAMPA_OID_2"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_STAMPA foreign key ("STAMPA_OID_2") references "APP"."STAMPA" ("OID");


-- Configurazione_Maglietta [rel13]
alter table "APP"."CONFIGURAZIONE"  add column  "MAGLIETTA_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");


-- Configurazione_Sesso [rel14]
alter table "APP"."CONFIGURAZIONE"  add column  "SESSO_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_SESSO foreign key ("SESSO_OID") references "APP"."SESSO" ("OID");


-- Configurazione_Taglia [rel15]
alter table "APP"."CONFIGURAZIONE"  add column  "TAGLIA_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_TAGLIA foreign key ("TAGLIA_OID") references "APP"."TAGLIA" ("OID");


-- Configurazione_Colore [rel16]
alter table "APP"."CONFIGURAZIONE"  add column  "COLORE_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_COLORE foreign key ("COLORE_OID") references "APP"."COLORE" ("OID");


-- RigaOrdine_Configurazione [rel17]
alter table "APP"."CONFIGURAZIONE"  add column  "RIGAORDINE_OID"  integer;
alter table "APP"."CONFIGURAZIONE"   add constraint FK_CONFIGURAZIONE_RIGAORDINE foreign key ("RIGAORDINE_OID") references "APP"."RIGAORDINE" ("OID");


-- Ordine_RigaOrdine [rel18]
alter table "APP"."RIGAORDINE"  add column  "ORDINE_OID"  integer;
alter table "APP"."RIGAORDINE"   add constraint FK_RIGAORDINE_ORDINE foreign key ("ORDINE_OID") references "APP"."ORDINE" ("OID");


-- Ordine_Cliente [rel19]
alter table "APP"."ORDINE"  add column  "CLIENTE_OID"  integer;
alter table "APP"."ORDINE"   add constraint FK_ORDINE_CLIENTE foreign key ("CLIENTE_OID") references "APP"."CLIENTE" ("USER_OID");


-- Ordine_Stampatore [rel20]
alter table "APP"."ORDINE"  add column  "STAMPATORE_OID"  integer;
alter table "APP"."ORDINE"   add constraint FK_ORDINE_STAMPATORE foreign key ("STAMPATORE_OID") references "APP"."STAMPATORE" ("USER_OID");


-- Cliente_Stampa [rel21]
alter table "APP"."STAMPA"  add column  "CLIENTE_OID"  integer;
alter table "APP"."STAMPA"   add constraint FK_STAMPA_CLIENTE foreign key ("CLIENTE_OID") references "APP"."CLIENTE" ("USER_OID");


-- Template_StampaFronte [rel22]
alter table "APP"."TEMPLATE"  add column  "STAMPA_OID"  integer;
alter table "APP"."TEMPLATE"   add constraint FK_TEMPLATE_STAMPA foreign key ("STAMPA_OID") references "APP"."STAMPA" ("OID");


-- Template_StampaRetro [rel23]
alter table "APP"."TEMPLATE"  add column  "STAMPA_OID_2"  integer;
alter table "APP"."TEMPLATE"   add constraint FK_TEMPLATE_STAMPA_2 foreign key ("STAMPA_OID_2") references "APP"."STAMPA" ("OID");


-- Tema_Stampa [rel24]
create table "APP"."TEMA_STAMPA" (
   "TEMA_OID"  integer not null,
   "STAMPA_OID"  integer not null,
  primary key ("TEMA_OID", "STAMPA_OID")
);
alter table "APP"."TEMA_STAMPA"   add constraint FK_TEMA_STAMPA_TEMA foreign key ("TEMA_OID") references "APP"."TEMA" ("OID");
alter table "APP"."TEMA_STAMPA"   add constraint FK_TEMA_STAMPA_STAMPA foreign key ("STAMPA_OID") references "APP"."STAMPA" ("OID");


-- Maglietta_Taglia [rel3]
create table "APP"."MAGLIETTA_TAGLIA" (
   "MAGLIETTA_OID"  integer not null,
   "TAGLIA_OID"  integer not null,
  primary key ("MAGLIETTA_OID", "TAGLIA_OID")
);
alter table "APP"."MAGLIETTA_TAGLIA"   add constraint FK_MAGLIETTA_TAGLIA_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");
alter table "APP"."MAGLIETTA_TAGLIA"   add constraint FK_MAGLIETTA_TAGLIA_TAGLIA foreign key ("TAGLIA_OID") references "APP"."TAGLIA" ("OID");


-- Maglietta_Sesso [rel4]
create table "APP"."MAGLIETTA_SESSO" (
   "MAGLIETTA_OID"  integer not null,
   "SESSO_OID"  integer not null,
  primary key ("MAGLIETTA_OID", "SESSO_OID")
);
alter table "APP"."MAGLIETTA_SESSO"   add constraint FK_MAGLIETTA_SESSO_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");
alter table "APP"."MAGLIETTA_SESSO"   add constraint FK_MAGLIETTA_SESSO_SESSO foreign key ("SESSO_OID") references "APP"."SESSO" ("OID");


-- Maglietta_Foto [rel5]
alter table "APP"."FOTO"  add column  "MAGLIETTA_OID"  integer;
alter table "APP"."FOTO"   add constraint FK_FOTO_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");


-- Foto_Colore [rel6]
alter table "APP"."FOTO"  add column  "COLORE_OID"  integer;
alter table "APP"."FOTO"   add constraint FK_FOTO_COLORE foreign key ("COLORE_OID") references "APP"."COLORE" ("OID");


-- Foto_Sesso [rel7]
alter table "APP"."FOTO"  add column  "SESSO_OID"  integer;
alter table "APP"."FOTO"   add constraint FK_FOTO_SESSO foreign key ("SESSO_OID") references "APP"."SESSO" ("OID");


-- GEN FK: Cliente --> User
alter table "APP"."CLIENTE"   add constraint FK_CLIENTE_USER foreign key ("USER_OID") references "APP"."USER" ("OID");


-- GEN FK: Stampatore --> User
alter table "APP"."STAMPATORE"   add constraint FK_STAMPATORE_USER foreign key ("USER_OID") references "APP"."USER" ("OID");


-- GEN FK: Template --> Maglietta
alter table "APP"."TEMPLATE"   add constraint FK_TEMPLATE_MAGLIETTA foreign key ("MAGLIETTA_OID") references "APP"."MAGLIETTA" ("OID");


