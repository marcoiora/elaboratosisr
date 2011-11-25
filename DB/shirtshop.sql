-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: 25 nov, 2011 at 10:57 AM
-- Versione MySQL: 5.1.41
-- Versione PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shirtshop`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `user_oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cognome` varchar(255) DEFAULT NULL,
  `indirizzo` varchar(255) DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `codicefiscale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_oid`),
  KEY `fk_cliente_user` (`user_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `cliente`
--

INSERT INTO `cliente` (`user_oid`, `nome`, `cognome`, `indirizzo`, `isactive`, `telefono`, `codicefiscale`) VALUES
(1, 'Mario', 'Rossi', 'Corso G. Garibaldi, 1000, Roma', b'1', '0987654321', 'MRARSS66V89OL'),
(4, 'Marco', 'Iora', 'Vicolo delle corti 10 Tignale', b'1', '1223444589', 'IOR7788H9928K'),
(5, 'Roberta', 'Lorenzi', 'Vicolo delle corti 10 Tignale', b'1', '9300202099', 'LRNRRT81B66D940Z'),
(6, 'Andrea', 'Piccinelli', 'via valiga, boh', b'1', '123467789990', 'PCCGG89K897L'),
(8, 'Giulio', 'Verdi', 'Via Roma, 45 Roma', b'1', '73299929002', 'GLIVRD44G88J789O'),
(9, 'Massimo', 'Bianchi', 'Via Napoleone, 67 Milano', b'1', '90238293829', 'MSSBNC89H87K987U'),
(10, 'Rosalba', 'Mazzini', 'Via dei Pini, 5 Borgosatollo (BS)', b'1', '832998382', 'RSLMZZ79B77H870L');

-- --------------------------------------------------------

--
-- Struttura della tabella `colore`
--

CREATE TABLE IF NOT EXISTS `colore` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `valoreesadecimale` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `colore`
--

INSERT INTO `colore` (`oid`, `nome`, `valoreesadecimale`) VALUES
(1, 'rosso', 'ff0000'),
(2, 'verde', '00ff00'),
(3, 'blu', '0000ff');

-- --------------------------------------------------------

--
-- Struttura della tabella `configurazione`
--

CREATE TABLE IF NOT EXISTS `configurazione` (
  `oid` int(11) NOT NULL,
  `dimensionefronte` double DEFAULT NULL,
  `dimensioneretro` double DEFAULT NULL,
  `stampa_oid` int(11) DEFAULT NULL,
  `stampa_oid_2` int(11) DEFAULT NULL,
  `maglietta_oid` int(11) DEFAULT NULL,
  `sesso_oid` int(11) DEFAULT NULL,
  `taglia_oid` int(11) DEFAULT NULL,
  `colore_oid` int(11) DEFAULT NULL,
  `rigaordine_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_configurazione_stampa_2` (`stampa_oid`),
  KEY `fk_configurazione_stampa` (`stampa_oid_2`),
  KEY `fk_configurazione_maglietta` (`maglietta_oid`),
  KEY `fk_configurazione_sesso` (`sesso_oid`),
  KEY `fk_configurazione_taglia` (`taglia_oid`),
  KEY `fk_configurazione_colore` (`colore_oid`),
  KEY `fk_configurazione_rigaordine` (`rigaordine_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `configurazione`
--

INSERT INTO `configurazione` (`oid`, `dimensionefronte`, `dimensioneretro`, `stampa_oid`, `stampa_oid_2`, `maglietta_oid`, `sesso_oid`, `taglia_oid`, `colore_oid`, `rigaordine_oid`) VALUES
(1, NULL, NULL, NULL, NULL, 1, 1, 2, 1, NULL),
(2, NULL, 1, NULL, 1, 2, 1, 2, 3, 1),
(3, NULL, 1, NULL, 2, 2, 1, 2, 2, 2),
(4, 0.5, 1, 1, 1, 1, 2, 2, 2, 3),
(5, 1, NULL, 1, NULL, 1, 1, 2, 1, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `foto`
--

CREATE TABLE IF NOT EXISTS `foto` (
  `oid` int(11) NOT NULL,
  `commento` longtext,
  `immagine` varchar(255) DEFAULT NULL,
  `maglietta_oid` int(11) DEFAULT NULL,
  `colore_oid` int(11) DEFAULT NULL,
  `sesso_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_foto_maglietta` (`maglietta_oid`),
  KEY `fk_foto_colore` (`colore_oid`),
  KEY `fk_foto_sesso` (`sesso_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `foto`
--

INSERT INTO `foto` (`oid`, `commento`, `immagine`, `maglietta_oid`, `colore_oid`, `sesso_oid`) VALUES
(1, '<p>\r\n	Polo L569 Colore Rosso</p>\r\n', 'upload/ent5/1/polorossa.jpg', 2, 1, 1),
(2, '<p>\r\n	Polo L569 Colore Verde</p>\r\n', 'upload/ent5/1/poloverde.jpg', 2, 2, 1),
(3, '<p>\r\n	Polo L569 Colore Blu</p>\r\n', 'upload/ent5/1/polo-blu_27-1.jpg', 2, 3, 1),
(4, '<p>\r\n	T-shirt da Uomo Manica Lunga</p>\r\n', 'upload/ent5/1/t-shirt-jersey-manica-lunga-blu-1.jpg', 1, NULL, 1),
(5, '<p>\r\n	Canotta da Uomo Rossa</p>\r\n', 'upload/ent5/1/f61098b_0000.jpg', 3, 1, 1),
(6, '<p>\r\n	T-Shirt Manica Lunga Rossa Guru con Margherita</p>\r\n', 'upload/ent5/1/GuruRossa.JPG', 4, 1, 1),
(7, '<p>\r\n	T-shirt Manica Lunga con Margherita Guru</p>\r\n', 'upload/ent5/1/bluguru.png', 4, 3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `oid` int(11) NOT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `module_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_group_module` (`module_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `group`
--

INSERT INTO `group` (`oid`, `groupname`, `module_oid`) VALUES
(1, 'Clienti', 2),
(2, 'Stampatori', 3),
(3, 'Amministratori', 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `group_module`
--

CREATE TABLE IF NOT EXISTS `group_module` (
  `group_oid` int(11) NOT NULL,
  `module_oid` int(11) NOT NULL,
  PRIMARY KEY (`group_oid`,`module_oid`),
  KEY `fk_group_module_group` (`group_oid`),
  KEY `fk_group_module_module` (`module_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `group_module`
--

INSERT INTO `group_module` (`group_oid`, `module_oid`) VALUES
(1, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `maglietta`
--

CREATE TABLE IF NOT EXISTS `maglietta` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descrizione` longtext,
  `manica` varchar(255) DEFAULT NULL,
  `collo` varchar(255) DEFAULT NULL,
  `stampabilefronte` bit(1) DEFAULT NULL,
  `stampabileretro` bit(1) DEFAULT NULL,
  `materiale` varchar(255) DEFAULT NULL,
  `prezzo` double DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `maglietta`
--

INSERT INTO `maglietta` (`oid`, `nome`, `descrizione`, `manica`, `collo`, `stampabilefronte`, `stampabileretro`, `materiale`, `prezzo`, `isactive`) VALUES
(1, 'T-Shirt Regular', '<ul>\r\n	<li>\r\n		T-Shirt Regular Manica Lunga&nbsp;(61-038-0) disponible anche per Donna&nbsp;(61-266-0) e Bambino (61-007-0)</li>\r\n	<li>\r\n		Collo con costina in cotone/Lycra&reg;&nbsp;e&nbsp;fettuccia interna</li>\r\n	<li>\r\n		Filato Belcoro&reg; per una maggiore&nbsp;morbidezza e per un processo di stampa&nbsp;piu&rsquo; pulito</li>\r\n	<li>\r\n		Tessitura compatta per una migliore&nbsp;stampabilita</li>\r\n</ul>\r\n', 'Lunga', 'Girocollo', b'1', b'1', 'Cotone', 12.9, b'1'),
(2, 'Polo L569', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	La linea di polo in cotone 569 &egrave; conveniente ma di ottima qualit&agrave;</div>\r\n<div>\r\n	La qualit&agrave; di questo cotone ring spun supera di gran lunga lo standard di questa fascia di&nbsp;prezzo.</div>\r\n<ul>\r\n	<li>\r\n		Nastro di rinforzo per massima durata e comfort</li>\r\n	<li>\r\n		Spacchetti per comoda vestibilit&agrave;</li>\r\n	<li>\r\n		Giromanica in costina 1x1</li>\r\n	<li>\r\n		Cuciture della spalla rinforzate</li>\r\n	<li>\r\n		Orlo a 2 aghi per la massima stabilit&agrave;</li>\r\n	<li>\r\n		Bottone di ricambio nella cucitura del fianco</li>\r\n	<li>\r\n		XS disponibile in French Navy e White</li>\r\n</ul>\r\n<div>\r\n	<em><strong>Tessuto</strong></em></div>\r\n<div>\r\n	Piquet 100% cotone ring spun</div>\r\n<div>\r\n	Peso: Colori: 200g/m&sup2;, White: 195g/m&sup2;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<div>\r\n		<strong>Decorator Note</strong></div>\r\n	<div>\r\n		La qualit&agrave; di fattura e del tessuto permette eccezionali risultati di personalizzazione nella categoria di prodotto a prezzo&nbsp;competitivo</div>\r\n</div>\r\n', 'Lunga', 'Polo', b'0', b'1', 'Cotone', 15.9, b'1'),
(3, 'Canotta Uomo', '<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		Bordo su collo e giromanica dello stesso&nbsp;tessuto del corpo</li>\r\n	<li>\r\n		Filato Belcoro&reg; per una maggiore&nbsp;morbidezza e per un processo di stampa&nbsp;piu&rsquo; pulito</li>\r\n	<li>\r\n		Tessitura compatta per una migliore&nbsp;stampabilita</li>\r\n</ul>\r\n', 'Senza Manica', 'Girocollo', b'1', b'1', 'Cotone', 6.9, b'1'),
(4, 'Guru', '<p>\r\n	Nuova proposta con Guru. Fantastica maglietta in caldo cotone con splendida margherita sul davanti.</p>\r\n', 'Lunga', 'Girocollo', b'0', b'0', 'Cotone', 25.9, b'1');

-- --------------------------------------------------------

--
-- Struttura della tabella `maglietta_colore`
--

CREATE TABLE IF NOT EXISTS `maglietta_colore` (
  `maglietta_oid` int(11) NOT NULL,
  `colore_oid` int(11) NOT NULL,
  PRIMARY KEY (`maglietta_oid`,`colore_oid`),
  KEY `fk_maglietta_colore_maglietta` (`maglietta_oid`),
  KEY `fk_maglietta_colore_colore` (`colore_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `maglietta_colore`
--

INSERT INTO `maglietta_colore` (`maglietta_oid`, `colore_oid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 1),
(4, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `maglietta_sesso`
--

CREATE TABLE IF NOT EXISTS `maglietta_sesso` (
  `maglietta_oid` int(11) NOT NULL,
  `sesso_oid` int(11) NOT NULL,
  PRIMARY KEY (`maglietta_oid`,`sesso_oid`),
  KEY `fk_maglietta_sesso_maglietta` (`maglietta_oid`),
  KEY `fk_maglietta_sesso_sesso` (`sesso_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `maglietta_sesso`
--

INSERT INTO `maglietta_sesso` (`maglietta_oid`, `sesso_oid`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `maglietta_taglia`
--

CREATE TABLE IF NOT EXISTS `maglietta_taglia` (
  `maglietta_oid` int(11) NOT NULL,
  `taglia_oid` int(11) NOT NULL,
  PRIMARY KEY (`maglietta_oid`,`taglia_oid`),
  KEY `fk_maglietta_taglia_maglietta` (`maglietta_oid`),
  KEY `fk_maglietta_taglia_taglia` (`taglia_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `maglietta_taglia`
--

INSERT INTO `maglietta_taglia` (`maglietta_oid`, `taglia_oid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `oid` int(11) NOT NULL,
  `moduleid` varchar(255) DEFAULT NULL,
  `modulename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `module`
--

INSERT INTO `module` (`oid`, `moduleid`, `modulename`) VALUES
(1, 'sv1', 'Pubblica'),
(2, 'sv2', 'Cliente'),
(3, 'sv3', 'Stampatore'),
(4, 'sv4', 'Amministrazione');

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine`
--

CREATE TABLE IF NOT EXISTS `ordine` (
  `oid` int(11) NOT NULL,
  `dataoraconferma` datetime DEFAULT NULL,
  `dataorapresaincarico` datetime DEFAULT NULL,
  `dataoraspedizione` datetime DEFAULT NULL,
  `spesespedizione` double DEFAULT NULL,
  `stato` varchar(255) DEFAULT NULL,
  `cliente_oid` int(11) DEFAULT NULL,
  `stampatore_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_ordine_cliente` (`cliente_oid`),
  KEY `fk_ordine_stampatore` (`stampatore_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `ordine`
--

INSERT INTO `ordine` (`oid`, `dataoraconferma`, `dataorapresaincarico`, `dataoraspedizione`, `spesespedizione`, `stato`, `cliente_oid`, `stampatore_oid`) VALUES
(1, '2011-11-24 14:55:41', NULL, NULL, NULL, 'da-gestire', 4, NULL),
(2, '2011-11-24 15:23:10', NULL, NULL, NULL, 'da-gestire', 5, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `ordine_prezzototale_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`shirtshop`@`%` SQL SECURITY DEFINER VIEW `shirtshop`.`ordine_prezzototale_view` AS select `al1`.`oid` AS `oid`,sum(`al2`.`prezzototale`) AS `der_attr` from (`shirtshop`.`ordine` `al1` left join `shirtshop`.`rigaordine` `al2` on((`al1`.`oid` = `al2`.`ordine_oid`))) group by `al1`.`oid`;

--
-- Dump dei dati per la tabella `ordine_prezzototale_view`
--

INSERT INTO `ordine_prezzototale_view` (`oid`, `der_attr`) VALUES
(1, 30.9),
(2, 452.7);

-- --------------------------------------------------------

--
-- Struttura della tabella `pagina`
--

CREATE TABLE IF NOT EXISTS `pagina` (
  `oid` int(11) NOT NULL,
  `titolo` varchar(255) DEFAULT NULL,
  `testohtml` longtext,
  `home` bit(1) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `pagina`
--

INSERT INTO `pagina` (`oid`, `titolo`, `testohtml`, `home`) VALUES
(1, 'ShirtShop WebMarket', '<p>\r\n	<b style="color: rgb(0, 0, 0); font-family: arial, verdana, helvetica, sans-serif; font-size: 13px; text-align: -webkit-center; ">Creare online </b><b style="color: rgb(0, 0, 0); font-family: arial, verdana, helvetica, sans-serif; font-size: 13px; text-align: -webkit-center; ">t-shirt personalizzate</b>&nbsp;non &egrave; mai stato cos&igrave; semplice:<br style="color: rgb(0, 0, 0); font-family: arial, verdana, helvetica, sans-serif; font-size: 13px; text-align: -webkit-center; " />\r\n	scegli il modello e il colore, aggiungi un&#39;immagine fra quelle in archivio o carica un&#39;immagine tua.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Cerchi una nuova idea oppure vuoi acquistare una t-shirt disegnata dai nostri designer?</p>\r\n<p>\r\n	Visita la nostra gallery: abbiamo a disposizione un vasto elenco di grafiche pronte per essere indossate!</p>\r\n', b'1');

-- --------------------------------------------------------

--
-- Struttura della tabella `rigaordine`
--

CREATE TABLE IF NOT EXISTS `rigaordine` (
  `oid` int(11) NOT NULL,
  `prezzosingolo` double DEFAULT NULL,
  `quantita` varchar(255) DEFAULT NULL,
  `prezzototale` double DEFAULT NULL,
  `ordine_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_rigaordine_ordine` (`ordine_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `rigaordine`
--

INSERT INTO `rigaordine` (`oid`, `prezzosingolo`, `quantita`, `prezzototale`, `ordine_oid`) VALUES
(1, 30.9, '1', 30.9, 1),
(2, 26.8, '3', 80.4, 2),
(3, 35.4, '5', 177, 2),
(4, 27.9, '7', 195.3, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `sesso`
--

CREATE TABLE IF NOT EXISTS `sesso` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `sesso`
--

INSERT INTO `sesso` (`oid`, `nome`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Struttura della tabella `stampa`
--

CREATE TABLE IF NOT EXISTS `stampa` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `descrizione` longtext,
  `anteprima` varchar(255) DEFAULT NULL,
  `immaginehd` varchar(255) DEFAULT NULL,
  `prezzobase` double DEFAULT NULL,
  `isactive` bit(1) DEFAULT NULL,
  `cliente_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_stampa_cliente` (`cliente_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `stampa`
--

INSERT INTO `stampa` (`oid`, `nome`, `descrizione`, `anteprima`, `immaginehd`, `prezzobase`, `isactive`, `cliente_oid`) VALUES
(1, 'Babbo Natale', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	BABBO NATALE HA: IL BERRETTO ROSSO, LA BARBA E I BAFFI BIANCHI, LA CINTURA NERA, IL VESTITO ROSSO, I BORDI DEL VESTITO DI PELLICCIA BIANCA, I BOTTONI NERI,</div>\r\n<div>\r\n	GLI STIVALI MARRONI, I GUANTI COLORATI.</div>\r\n<div>\r\n	&egrave; &nbsp;BUONO BABBO NATALE E PORTA DONI A TUTTI I BAMBINI DEL MONDO.</div>\r\n', 'upload/ent6/1/immagini_babbo_natalePic.gif', 'upload/ent6/1/immagini_babbo_natale.gif', 15, b'1', NULL),
(2, 'Coniglio', '<p>\r\n	Il Coniglio Bianco si pu&ograve; considerare un araldo&nbsp;della Regina di cuori, &egrave; proprio lui che apre i cortei annunciando la corte e che presiede al processo al Fante di cuori.</p>\r\n<p>\r\n	&Egrave; un coniglio bipede di colore bianco con gli occhi rosa.&nbsp;Porta un panciotto nel quale tiene un orologio da tasca</p>\r\n', 'upload/ent6/1/coniglio03Pic.jpg', 'upload/ent6/1/coniglio03.jpg', 10.9, b'1', NULL),
(3, 'Zucca', '<p>\r\n	&nbsp;</p>\r\n<h2 style="font-size: 13px; font-style: italic; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; ">\r\n	La zucca &egrave; una tipica verdura autunnale.&nbsp;<br />\r\n	In cucina la zucca per il sapore che tende al dolce &egrave; adatta alla preparazione di piatti dolci e salati, e anche a mostarde e marmellate. Utile per chi segue un regime alimentare poco calorico. Ha propriet&agrave; diuretiche e depurative.</h2>\r\n', 'upload/ent6/1/zucca_halloweenPic.jpg', 'upload/ent6/1/zucca_halloween.jpg', 13.4, b'1', NULL),
(4, 'Margherita', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	La margherita ha fatto in modo che la mia azienda si strutturasse. Adesso tendiamo ad identificarci con il nome Guru pi&ugrave; che con il fiore che, diventato piccolissimo, &egrave; solo un&rsquo;appendice grafica del logo</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 'upload/ent6/1/margherita-guruPic.jpg', 'upload/ent6/1/margherita-guru.jpg', 8.9, b'1', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `stampatore`
--

CREATE TABLE IF NOT EXISTS `stampatore` (
  `user_oid` int(11) NOT NULL,
  `matricola` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_oid`),
  KEY `fk_stampatore_user` (`user_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `stampatore`
--

INSERT INTO `stampatore` (`user_oid`, `matricola`) VALUES
(2, 'P42L000'),
(7, 'P56Q095');

-- --------------------------------------------------------

--
-- Struttura della tabella `taglia`
--

CREATE TABLE IF NOT EXISTS `taglia` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `taglia`
--

INSERT INTO `taglia` (`oid`, `nome`) VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large');

-- --------------------------------------------------------

--
-- Struttura della tabella `tema`
--

CREATE TABLE IF NOT EXISTS `tema` (
  `oid` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tema`
--

INSERT INTO `tema` (`oid`, `nome`) VALUES
(1, 'natale'),
(2, 'pasqua'),
(3, 'halloween'),
(4, 'animali'),
(5, 'Natura');

-- --------------------------------------------------------

--
-- Struttura della tabella `tema_stampa`
--

CREATE TABLE IF NOT EXISTS `tema_stampa` (
  `tema_oid` int(11) NOT NULL,
  `stampa_oid` int(11) NOT NULL,
  PRIMARY KEY (`tema_oid`,`stampa_oid`),
  KEY `fk_tema_stampa_tema` (`tema_oid`),
  KEY `fk_tema_stampa_stampa` (`stampa_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tema_stampa`
--

INSERT INTO `tema_stampa` (`tema_oid`, `stampa_oid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `maglietta_oid` int(11) NOT NULL,
  `dimensionefronte` double DEFAULT NULL,
  `dimensioneretro` double DEFAULT NULL,
  `stampa_oid` int(11) DEFAULT NULL,
  `stampa_oid_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`maglietta_oid`),
  KEY `fk_template_stampa` (`stampa_oid`),
  KEY `fk_template_stampa_2` (`stampa_oid_2`),
  KEY `fk_template_maglietta` (`maglietta_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `template`
--

INSERT INTO `template` (`maglietta_oid`, `dimensionefronte`, `dimensioneretro`, `stampa_oid`, `stampa_oid_2`) VALUES
(4, 1, NULL, 4, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `oid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `group_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_user_group` (`group_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`oid`, `username`, `password`, `email`, `group_oid`) VALUES
(1, 'cliente', 'cliente', 'cliente@example.com', 1),
(2, 'P42L000', 'stampatore', 'stampatore@example.com', 2),
(3, 'amministratore', 'amministratore', 'amministratore@example.com', 3),
(4, 'marco', 'marco', 'marco.iora@gmail.com', 1),
(5, 'roberta', 'roberta', 'roberta.lorenzi@gmail.com', 1),
(6, 'piccy', 'piccy', 'piccy@qui.la', 1),
(7, 'P56Q095', 'stampatore01', '56@qwer.ty', 2),
(8, 'giulio', 'giulio', 'giulio.verdi@miamail.com', 1),
(9, 'massimo', 'massimo', 'massimo.bianchi@mailmia.it', 1),
(10, 'rosalba', 'rosalba', 'rosalba.mazzini@gmail.com', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `user_oid` int(11) NOT NULL,
  `group_oid` int(11) NOT NULL,
  PRIMARY KEY (`user_oid`,`group_oid`),
  KEY `fk_user_group_user` (`user_oid`),
  KEY `fk_user_group_group` (`group_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `user_group`
--

INSERT INTO `user_group` (`user_oid`, `group_oid`) VALUES
(1, 1),
(2, 2),
(3, 3);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_cliente_user` FOREIGN KEY (`user_oid`) REFERENCES `user` (`oid`);

--
-- Limiti per la tabella `configurazione`
--
ALTER TABLE `configurazione`
  ADD CONSTRAINT `fk_configurazione_colore` FOREIGN KEY (`colore_oid`) REFERENCES `colore` (`oid`),
  ADD CONSTRAINT `fk_configurazione_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`),
  ADD CONSTRAINT `fk_configurazione_rigaordine` FOREIGN KEY (`rigaordine_oid`) REFERENCES `rigaordine` (`oid`),
  ADD CONSTRAINT `fk_configurazione_sesso` FOREIGN KEY (`sesso_oid`) REFERENCES `sesso` (`oid`),
  ADD CONSTRAINT `fk_configurazione_stampa` FOREIGN KEY (`stampa_oid_2`) REFERENCES `stampa` (`oid`),
  ADD CONSTRAINT `fk_configurazione_stampa_2` FOREIGN KEY (`stampa_oid`) REFERENCES `stampa` (`oid`),
  ADD CONSTRAINT `fk_configurazione_taglia` FOREIGN KEY (`taglia_oid`) REFERENCES `taglia` (`oid`);

--
-- Limiti per la tabella `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `fk_foto_colore` FOREIGN KEY (`colore_oid`) REFERENCES `colore` (`oid`),
  ADD CONSTRAINT `fk_foto_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`),
  ADD CONSTRAINT `fk_foto_sesso` FOREIGN KEY (`sesso_oid`) REFERENCES `sesso` (`oid`);

--
-- Limiti per la tabella `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `fk_group_module` FOREIGN KEY (`module_oid`) REFERENCES `module` (`oid`);

--
-- Limiti per la tabella `group_module`
--
ALTER TABLE `group_module`
  ADD CONSTRAINT `fk_group_module_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`),
  ADD CONSTRAINT `fk_group_module_module` FOREIGN KEY (`module_oid`) REFERENCES `module` (`oid`);

--
-- Limiti per la tabella `maglietta_colore`
--
ALTER TABLE `maglietta_colore`
  ADD CONSTRAINT `fk_maglietta_colore_colore` FOREIGN KEY (`colore_oid`) REFERENCES `colore` (`oid`),
  ADD CONSTRAINT `fk_maglietta_colore_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`);

--
-- Limiti per la tabella `maglietta_sesso`
--
ALTER TABLE `maglietta_sesso`
  ADD CONSTRAINT `fk_maglietta_sesso_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`),
  ADD CONSTRAINT `fk_maglietta_sesso_sesso` FOREIGN KEY (`sesso_oid`) REFERENCES `sesso` (`oid`);

--
-- Limiti per la tabella `maglietta_taglia`
--
ALTER TABLE `maglietta_taglia`
  ADD CONSTRAINT `fk_maglietta_taglia_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`),
  ADD CONSTRAINT `fk_maglietta_taglia_taglia` FOREIGN KEY (`taglia_oid`) REFERENCES `taglia` (`oid`);

--
-- Limiti per la tabella `ordine`
--
ALTER TABLE `ordine`
  ADD CONSTRAINT `fk_ordine_cliente` FOREIGN KEY (`cliente_oid`) REFERENCES `cliente` (`user_oid`),
  ADD CONSTRAINT `fk_ordine_stampatore` FOREIGN KEY (`stampatore_oid`) REFERENCES `stampatore` (`user_oid`);

--
-- Limiti per la tabella `rigaordine`
--
ALTER TABLE `rigaordine`
  ADD CONSTRAINT `fk_rigaordine_ordine` FOREIGN KEY (`ordine_oid`) REFERENCES `ordine` (`oid`);

--
-- Limiti per la tabella `stampa`
--
ALTER TABLE `stampa`
  ADD CONSTRAINT `fk_stampa_cliente` FOREIGN KEY (`cliente_oid`) REFERENCES `cliente` (`user_oid`);

--
-- Limiti per la tabella `stampatore`
--
ALTER TABLE `stampatore`
  ADD CONSTRAINT `fk_stampatore_user` FOREIGN KEY (`user_oid`) REFERENCES `user` (`oid`);

--
-- Limiti per la tabella `tema_stampa`
--
ALTER TABLE `tema_stampa`
  ADD CONSTRAINT `fk_tema_stampa_stampa` FOREIGN KEY (`stampa_oid`) REFERENCES `stampa` (`oid`),
  ADD CONSTRAINT `fk_tema_stampa_tema` FOREIGN KEY (`tema_oid`) REFERENCES `tema` (`oid`);

--
-- Limiti per la tabella `template`
--
ALTER TABLE `template`
  ADD CONSTRAINT `fk_template_maglietta` FOREIGN KEY (`maglietta_oid`) REFERENCES `maglietta` (`oid`),
  ADD CONSTRAINT `fk_template_stampa` FOREIGN KEY (`stampa_oid`) REFERENCES `stampa` (`oid`),
  ADD CONSTRAINT `fk_template_stampa_2` FOREIGN KEY (`stampa_oid_2`) REFERENCES `stampa` (`oid`);

--
-- Limiti per la tabella `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`);

--
-- Limiti per la tabella `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `fk_user_group_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`),
  ADD CONSTRAINT `fk_user_group_user` FOREIGN KEY (`user_oid`) REFERENCES `user` (`oid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
