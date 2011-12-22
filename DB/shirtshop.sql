-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: 21 dic, 2011 at 11:19 PM
-- Versione MySQL: 5.1.41
-- Versione PHP: 5.3.5

SET FOREIGN_KEY_CHECKS = 0; 

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: 'shirtshop'
--

--
-- Dump dei dati per la tabella 'cliente'
--

INSERT INTO cliente (user_oid, nome, cognome, indirizzo, isactive, telefono, codicefiscale) VALUES
(1, 'Mario', 'Rossi', 'Corso G. Garibaldi, 1000, Roma', b'1', '0987654321', 'MRARSS66V89OL'),
(4, 'Marco', 'Iora', 'Vicolo delle corti 10 Tignale', b'1', '1223444589', 'IOR7788H9928KSSS'),
(5, 'Roberta', 'Lorenzi', 'Vicolo delle corti 10 Tignale', b'1', '9300202099', 'LRNRRT81B66D940Z'),
(8, 'Giulio', 'Verdi', 'Via Roma, 45 Roma', b'1', '73299929002', 'GLIVRD44G88J789O'),
(9, 'Massimo', 'Bianchi', 'Via Napoleone, 67 Milano', b'1', '90238293829', 'MSSBNC89H87K987U'),
(10, 'Rosalba', 'Mazzini', 'Via dei Pini, 5 Borgosatollo (BS)', b'1', '832998382', 'RSLMZZ79B77H870L'),
(11, 'Paolo', 'Rossi', 'Via dei Pini, 78 Mantova', b'0', '892938298329', 'PLARSS89B06T946G'),
(12, 'Pierino', 'La Peste', 'Via dei Rospi 15 Bolzano', b'1', '9209308923', 'PRNLPS66T07N980J');

--
-- Dump dei dati per la tabella 'colore'
--

INSERT INTO colore (oid, nome, valoreesadecimale) VALUES
(1, 'Rosso', 'ff0000'),
(2, 'Verde', '00ff00'),
(3, 'Blu', '0000ff'),
(4, 'Violaceo', '6181FF'),
(5, 'Bianco', 'FFFFFF'),
(6, 'Giallo', 'FFFF00'),
(7, 'Arancione', ''),
(8, 'Nero', '00000');

--
-- Dump dei dati per la tabella 'configurazione'
--

INSERT INTO configurazione (oid, dimensionefronte, dimensioneretro, stampa_oid, stampa_oid_2, maglietta_oid, sesso_oid, taglia_oid, colore_oid, rigaordine_oid) VALUES
(2, NULL, 1, NULL, 1, 2, 1, 2, 3, 1),
(3, NULL, 1, NULL, 2, 2, 1, 2, 2, 2),
(4, 0.5, 1, 1, 1, 1, 2, 2, 2, 3),
(5, 1, NULL, 1, NULL, 1, 1, 2, 1, 4),
(18, NULL, 1, NULL, 7, 2, 1, 2, 3, 6),
(20, 1, 1, 9, 10, 1, 1, 2, 1, 8),
(35, NULL, 1, NULL, 4, 2, 1, 2, 3, 10),
(37, 1, NULL, 4, NULL, 4, NULL, NULL, NULL, NULL),
(53, 1, NULL, 11, NULL, 8, NULL, NULL, NULL, NULL),
(54, 1, NULL, 4, NULL, 4, NULL, NULL, NULL, NULL),
(55, NULL, NULL, NULL, NULL, 2, 1, 2, 3, NULL),
(56, NULL, 1, NULL, 6, 2, 1, 2, 3, 14),
(57, 1, NULL, 4, NULL, 4, NULL, NULL, NULL, 15),
(58, 1, NULL, 11, NULL, 8, NULL, NULL, NULL, 16),
(59, 1, NULL, 6, NULL, 7, NULL, NULL, NULL, NULL),
(60, 1, NULL, 13, NULL, 9, NULL, NULL, NULL, 17),
(61, 1, NULL, 6, NULL, 7, NULL, NULL, NULL, 18);

--
-- Dump dei dati per la tabella 'foto'
--

INSERT INTO foto (oid, commento, immagine, maglietta_oid, colore_oid, sesso_oid) VALUES
(1, '<p>\r\n	Polo L569 Colore Rosso</p>\r\n', 'upload/ent5/1/polorossa.jpg', 2, 1, 1),
(2, '<p>\r\n	Polo L569 Colore Verde</p>\r\n', 'upload/ent5/1/poloverde.jpg', 2, 2, 1),
(3, '<p>\r\n	Polo L569 Colore Blu</p>\r\n', 'upload/ent5/1/polo-blu_27-1.jpg', 2, 3, 1),
(4, '<p>\r\n	T-shirt da Uomo Manica Lunga</p>\r\n', 'upload/ent5/1/t-shirt-jersey-manica-lunga-blu-1.jpg', 1, NULL, 1),
(5, '<p>\r\n	Canotta da Uomo Rossa</p>\r\n', 'upload/ent5/1/f61098b_0000.jpg', 3, 1, 1),
(6, '<p>\r\n	T-Shirt Manica Lunga Rossa Guru con Margherita</p>\r\n', 'upload/ent5/1/GuruRossa.JPG', 4, 1, 1),
(7, '<p>\r\n	T-shirt Manica Lunga con Margherita Guru</p>\r\n', 'upload/ent5/1/bluguru.png', 4, 3, 1),
(11, '<p>\r\n	Titti&amp;Silvestro T-shirt per bambina rossa</p>\r\n', 'upload/ent5/1/BimbaTitti.jpg', 6, 1, 3),
(13, '<p>\r\n	Maglietta bimba bianca con sorriso</p>\r\n', 'upload/ent5/1/54264_C1000_A_pdt.jpg', 7, 5, 3),
(14, '<p>\r\n	Maglietta Spongebob Donna</p>\r\n', 'upload/ent5/1/maglietta_spongebob_donna_tc_123.jpg', 8, 6, 2),
(15, '<p>\r\n	Maglietta di Spongebob per Uomo Bianca.</p>\r\n', 'upload/ent5/1/Spongebob bianca.jpeg', 9, 5, 1),
(16, '<p>\r\n	Maglietta di Spongebob per Uomo Gialla</p>\r\n', 'upload/ent5/1/spongebobGialla.jpg', 9, 6, 1);

--
-- Dump dei dati per la tabella 'group'
--

INSERT INTO group (oid, groupname, module_oid) VALUES
(1, 'Clienti', 2),
(2, 'Stampatori', 3),
(3, 'Amministratori', 4);

--
-- Dump dei dati per la tabella 'group_module'
--

INSERT INTO group_module (group_oid, module_oid) VALUES
(1, 2),
(2, 3),
(3, 4);

--
-- Dump dei dati per la tabella 'maglietta'
--

INSERT INTO maglietta (oid, nome, descrizione, manica, collo, stampabilefronte, stampabileretro, materiale, prezzo, isactive) VALUES
(1, 'T-Shirt Regular', '<ul>\r\n	<li>\r\n		T-Shirt Regular Manica Lunga&nbsp;(61-038-0) disponible anche per Donna&nbsp;(61-266-0) e Bambino (61-007-0)</li>\r\n	<li>\r\n		Collo con costina in cotone/Lycra&reg;&nbsp;e&nbsp;fettuccia interna</li>\r\n	<li>\r\n		Filato Belcoro&reg; per una maggiore&nbsp;morbidezza e per un processo di stampa&nbsp;piu&rsquo; pulito</li>\r\n	<li>\r\n		Tessitura compatta per una migliore&nbsp;stampabilita</li>\r\n</ul>\r\n', 'Lunga', 'Girocollo', b'1', b'1', 'Cotone', 12.9, b'1'),
(2, 'Polo L569', '<p>\r\n	&nbsp;</p>\r\n<div>\r\n	La linea di polo in cotone 569 &egrave; conveniente ma di ottima qualit&agrave;</div>\r\n<div>\r\n	La qualit&agrave; di questo cotone ring spun supera di gran lunga lo standard di questa fascia di&nbsp;prezzo.</div>\r\n<ul>\r\n	<li>\r\n		Nastro di rinforzo per massima durata e comfort</li>\r\n	<li>\r\n		Spacchetti per comoda vestibilit&agrave;</li>\r\n	<li>\r\n		Giromanica in costina 1x1</li>\r\n	<li>\r\n		Cuciture della spalla rinforzate</li>\r\n	<li>\r\n		Orlo a 2 aghi per la massima stabilit&agrave;</li>\r\n	<li>\r\n		Bottone di ricambio nella cucitura del fianco</li>\r\n	<li>\r\n		XS disponibile in French Navy e White</li>\r\n</ul>\r\n<div>\r\n	<em><strong>Tessuto</strong></em></div>\r\n<div>\r\n	Piquet 100% cotone ring spun</div>\r\n<div>\r\n	Peso: Colori: 200g/m&sup2;, White: 195g/m&sup2;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	<div>\r\n		<strong>Decorator Note</strong></div>\r\n	<div>\r\n		La qualit&agrave; di fattura e del tessuto permette eccezionali risultati di personalizzazione nella categoria di prodotto a prezzo&nbsp;competitivo</div>\r\n</div>\r\n', 'Lunga', 'Polo', b'0', b'1', 'Cotone', 15.9, b'1'),
(3, 'Canotta Uomo', '<p>\r\n	&nbsp;</p>\r\n<ul>\r\n	<li>\r\n		Bordo su collo e giromanica dello stesso&nbsp;tessuto del corpo</li>\r\n	<li>\r\n		Filato Belcoro&reg; per una maggiore&nbsp;morbidezza e per un processo di stampa&nbsp;piu&rsquo; pulito</li>\r\n	<li>\r\n		Tessitura compatta per una migliore&nbsp;stampabilita</li>\r\n</ul>\r\n', 'Senza Manica', 'Girocollo', b'1', b'1', 'Cotone', 6.9, b'1'),
(4, 'Guru', '<p>\r\n	Nuova proposta con Guru. Fantastica maglietta in caldo cotone con splendida margherita sul davanti.</p>\r\n<p>\r\n	Istruzioni per il lavaggio:</p>\r\n<div style="opacity:0.75;">\r\n	<a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Lavatrice, lavaggio a freddo" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/10.gif" title="Lavatrice, lavaggio a freddo" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non candeggiare" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/41.gif" title="Non candeggiare" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non riporre in asciugatrice" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/52.gif" title="Non riporre in asciugatrice" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Stirare, asciugare a basse temperature" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/65.gif" title="Stirare, asciugare a basse temperature" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non lavare a secco" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/70.gif" title="Non lavare a secco" /></a></div>', 'Lunga', 'Girocollo', b'0', b'0', 'Cotone', 25.9, b'0'),
(6, 'Titti&Silvestro_T-shirt', '<p>\r\n	T-Shirt adatta per la tua bambina in morbido cotone 100% e molto confortevole. Lavabile in lavatrice a 40&deg;.</p>\r\n<p>\r\n	Il favoloso e un p&ograve; sfortunato gatto Silvestro e l&#39;amorevole canarino Titti accompagneranno sempre tua figlia.</p>\r\n', 'Corta', 'Girocollo', b'0', b'0', 'Cotone', 15.9, b'0'),
(7, 'Astrotop', '<div>\r\nDeliziosa questa maglietta per i nostri tesori! Da collezionare in tutti i colori della stagione!\r\n</div>\r\n<div>\r\nLa Maglietta ASTROTOP, girocollo, maniche lunghe, bottoni a pressione sul retro, stampa.\r\n</div>\r\n<p>\r\n	Istruzioni per il lavaggio:</p>\r\n<div style="opacity:0.75;">\r\n	<a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Lavatrice, lavaggio a freddo" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/10.gif" title="Lavatrice, lavaggio a freddo" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non candeggiare" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/41.gif" title="Non candeggiare" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non riporre in asciugatrice" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/52.gif" title="Non riporre in asciugatrice" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Stirare, asciugare a basse temperature" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/65.gif" title="Stirare, asciugare a basse temperature" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non lavare a secco" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/70.gif" title="Non lavare a secco" /></a></div>', 'Lunga', 'Girocollo', b'0', b'0', 'Cotone', 9.9, b'0'),
(8, 'Spongeb ', '<p>\r\n	ShirtShop ti offre il meglio del meglio. Questa fantastica proposta è caratterizzata da ottime rifiniture sia per la stampa che per le cuciture.</p>\r\n<div>100% Cotone Morbido TOP CLASS 170 g/m2</div>\r\n<p>\r\n	Istruzioni per il lavaggio:</p>\r\n<div style="opacity:0.75;">\r\n	<a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Lavatrice, lavaggio a freddo" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/10.gif" title="Lavatrice, lavaggio a freddo" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non candeggiare" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/41.gif" title="Non candeggiare" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non riporre in asciugatrice" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/52.gif" title="Non riporre in asciugatrice" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Stirare, asciugare a basse temperature" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/65.gif" title="Stirare, asciugare a basse temperature" /></a> <a href="http://www.emp-online.it/bin/shop.php?prog=shop&amp;mid=&amp;article=203941&amp;funktion=PRODUCTINFO&amp;bildrub=&amp;product=Spongebob:%20Bikini%20Bottom&amp;tc=EMPTY#measure_laundry"><img alt="Non lavare a secco" border="0" class="laundry" src="http://acfrg.com/layout/other/laundry/70.gif" title="Non lavare a secco" /></a></div>\r\n<p> Prodotto ufficiale e originale</p>\r\n<p> PREZZO ECCEZZIONALE!!!!</p>\r\n', 'Corta', 'Girocollo', b'0', b'0', 'Cotone', 24.9, b'0'),
(9, 'Spongebob ti sorride', '<p>\r\n	Maglietta originale di Spongebob.</p>\r\n<p>\r\n	Caratteristiche principali della maglietta:</p>\r\n<ul>\r\n	<li>\r\n		Collo con fettuccia per un maggiore comfort</li>\r\n	<li>\r\n		Filato Belcoro&reg; per maggiore morbidezza e processo di stampa piu&rsquo; pulito</li>\r\n</ul>\r\n<p>\r\n	Tessuto:<br />\r\n	100% cotone, Filato Belcoro&reg;</p>\r\n<p>\r\n	Peso:<br />\r\n	Bianco &ndash; 185gr/mq<br />\r\n	Colorato &ndash; 195gr/mq</p>\r\n', 'Corta', 'Girocollo', b'0', b'0', 'Cotone', 25.9, b'1');

--
-- Dump dei dati per la tabella 'maglietta_colore'
--

INSERT INTO maglietta_colore (maglietta_oid, colore_oid) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 1),
(4, 3),
(4, 6),
(6, 1),
(7, 5),
(8, 6),
(9, 5),
(9, 6);

--
-- Dump dei dati per la tabella 'maglietta_sesso'
--

INSERT INTO maglietta_sesso (maglietta_oid, sesso_oid) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(6, 3),
(7, 3),
(7, 4),
(8, 2),
(9, 1);

--
-- Dump dei dati per la tabella 'maglietta_taglia'
--

INSERT INTO maglietta_taglia (maglietta_oid, taglia_oid) VALUES
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
(4, 3),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(9, 1),
(9, 2),
(9, 3),
(9, 4);

--
-- Dump dei dati per la tabella 'module'
--

INSERT INTO module (oid, moduleid, modulename) VALUES
(1, 'sv1', 'Pubblica'),
(2, 'sv2', 'Cliente'),
(3, 'sv3', 'Stampatore'),
(4, 'sv4', 'Amministrazione');

--
-- Dump dei dati per la tabella 'ordine'
--

INSERT INTO ordine (oid, dataoraconferma, dataorapresaincarico, dataoraspedizione, spesespedizione, stato, tracking, cliente_oid, stampatore_oid) VALUES
(1, '2011-11-24 14:55:41', '2011-12-05 17:59:48', NULL, 9.9, 'in-stampa', NULL, 4, 2),
(2, '2011-11-24 15:23:10', '2011-12-01 22:49:47', '2011-12-05 17:58:41', 9.9, 'evaso', '38829JJ9', 5, 2),
(5, '2011-12-01 23:18:46', '2011-12-15 21:22:23', NULL, 9.9, 'in-stampa', NULL, 5, 2),
(7, '2011-12-01 23:28:21', '2011-12-18 15:05:13', NULL, 9.9, 'in-stampa', NULL, 10, 2),
(9, '2011-12-04 22:12:47', NULL, NULL, 9.9, 'da-gestire', NULL, 4, NULL),
(10, '2011-12-17 21:46:06', '2011-12-17 22:11:22', '2011-12-17 22:27:03', 9.9, 'evaso', '09NL01AB', 5, 2),
(11, '2011-12-15 22:24:20', '2011-12-15 22:27:52', NULL, 9.9, 'in-stampa', NULL, 4, 2),
(12, '2011-12-15 22:16:05', NULL, NULL, 9.9, 'da-gestire', NULL, 1, NULL),
(13, '2011-12-15 22:22:02', NULL, NULL, 9.9, 'da-gestire', NULL, 10, NULL),
(14, '2011-12-17 23:00:11', '2011-12-17 23:03:20', NULL, 9.9, 'in-stampa', NULL, 5, 2);

--
-- Dump dei dati per la tabella 'ordine_prezzototale_view'
--

INSERT INTO ordine_prezzototale_view (oid, der_attr) VALUES
(1, 40.8),
(2, 462.6),
(5, 35.8),
(7, 42.8),
(9, 34.7),
(10, 61.7),
(11, 30.3),
(12, 61.7),
(13, 84.6),
(14, 19.8);

--
-- Dump dei dati per la tabella 'pagina'
--

INSERT INTO pagina (oid, titolo, testohtml, home) VALUES
(1, 'ShirtShop WebMarket', '<p>\r\n	<b style="color: rgb(0, 0, 0); font-family: arial, verdana, helvetica, sans-serif; font-size: 13px; text-align: -webkit-center; ">Creare online t-shirt personalizzate non &egrave; mai stato cos&igrave; semplice:</b>\r\n<br/>\r\nscegli il modello e il colore, aggiungi un&#39;immagine fra quelle in archivio o carica un&#39;immagine tua.</p>\r\n<p>\r\nCerchi una nuova idea regalo oppure vuoi acquistare una t-shirt disegnata dai nostri designer?<br/>\r\nVisita la nostra gallery: abbiamo a disposizione un vasto elenco di grafiche pronte per essere indossate!</p>\r\n', b'1'),
(2, 'Contatti', '<p>\r\n	Numero di telefono: 0782882 88882</p>\r\n<p>\r\n	Indirizzo:&nbsp;&nbsp; Via dei Pioli, 26 Brescia</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	Chiama il nostro call-center al numero verde: 800 800 431</p>\r\n<p>\r\n	<br />\r\n	&nbsp;</p>\r\n', b'0'),
(3, 'Informazioni di spedizione', '<p>\r\n	Tutte le nostre spedizioni verranno recapitate tramite l&#39;azienda &quot;FastShipping&quot;.</p>\r\n<div class="tab_content" id="tab2" style="display: block;">\r\n	<p>\r\n		<strong>Tempi indicativi di consegna</strong><br />\r\n		La consegna si effettua dal luned&igrave; al venerd&igrave; nei seguenti tempi medi:</p>\r\n	<table border="0">\r\n		<tbody>\r\n			<tr>\r\n				<td>\r\n					<strong>Destinazioni</strong></td>\r\n				<td>\r\n					<strong>Tempi medi di consegna</strong></td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Paesi Unione Europea</strong> (principali localit&agrave;)</td>\r\n				<td>\r\n					<strong>2 giorni lavorativi</strong>, oltre quello di spedizione</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Paesi Extra Unione Europea</strong> (principali localit&agrave;)</td>\r\n				<td>\r\n					<strong>2/3 giorni lavorativi</strong>, oltre quello di spedizione, (salvo formalit&agrave; doganali)</td>\r\n			</tr>\r\n			<tr>\r\n				<td>\r\n					<strong>Resto del mondo</strong><br />\r\n					(principali localit&agrave;)</td>\r\n				<td>\r\n					<strong>3/4 giorni lavorativi</strong>, oltre quello di spedizione, (salvo formalit&agrave; doganali)</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	I giorni festivi e il sabato non sono computati nei tempi di consegna.\r\n	<p>\r\n		Sono previsti <strong>due tentativi di consegna gratuiti</strong>, di cui il secondo concordato con il destinatario.</p>\r\n	<p>\r\n		Per maggiori informazioni chiama il <strong>numero verde</strong> <strong>800.000.001</strong> (dal luned&igrave; al sabato, ore 8-20).</p>\r\n</div>\r\n<p>\r\n	Il costo per la spedizione, indipendentemente dal quantitativo di merce acquistata, &egrave; pari a <strong>9.90 euro</strong>.</p>\r\n', b'0');

--
-- Dump dei dati per la tabella 'rigaordine'
--

INSERT INTO rigaordine (oid, prezzosingolo, quantita, prezzototale, ordine_oid) VALUES
(1, 30.9, '1', 30.9, 1),
(2, 26.8, '3', 80.4, 2),
(3, 35.4, '5', 177, 2),
(4, 27.9, '7', 195.3, 2),
(6, 25.9, '1', 25.9, 5),
(8, 32.9, '1', 32.9, 7),
(10, 24.8, '1', 24.8, 9),
(14, 20.4, '1', 20.4, 11),
(15, 25.9, '2', 51.8, 12),
(16, 24.9, '3', 74.7, 13),
(17, 25.9, '2', 51.8, 10),
(18, 9.9, '1', 9.9, 14);

--
-- Dump dei dati per la tabella 'sesso'
--

INSERT INTO sesso (oid, nome) VALUES
(1, 'Uomo'),
(2, 'Donna'),
(3, 'Bambina'),
(4, 'Bambino'),
(5, 'Neonato'),
(6, 'Neonata');

--
-- Dump dei dati per la tabella 'stampa'
--

INSERT INTO stampa (oid, nome, descrizione, anteprima, immaginehd, prezzobase, isactive, cliente_oid) VALUES
(1, 'Babbo Natale', '<div>\r\nBabbo Natale ha: il berretto rosso, la barba e i baffi bianchi, la cintura nera, il vestito rosso.<br/>\r\nUn divertente Babbo Natale per le tue magliette invernali. Ottime per un caldo regalo natalizio.</div>\r\n<div>\r\nBABBO NATALE PORTA DONI A TUTTI I BAMBINI DEL MONDO.</div>\r\n', 'upload/ent6/1/immagini_babbo_natalePic.gif', 'upload/ent6/1/immagini_babbo_natale.gif', 15, b'1', NULL),
(2, 'Coniglio', '<p>\r\n	Il Coniglio Bianco si pu&ograve; considerare un araldo&nbsp;della Regina di cuori, &egrave; proprio lui che apre i cortei annunciando la corte e che presiede al processo al Fante di cuori.</p>\r\n<p>\r\n	&Egrave; un coniglio bipede di colore bianco con gli occhi rosa.&nbsp;Porta un panciotto nel quale tiene un orologio da tasca</p>\r\n', 'upload/ent6/1/ConiglioPic.jpg', 'upload/ent6/1/Coniglio.jpg', 10.9, b'1', NULL),
(3, 'Zucca', '<p>\r\n	La zucca &egrave; una tipica verdura autunnale<br />\r\n	Questa zucca render&agrave; l&#39; Halloween dei tuoi bambini ancora pi&ugrave; divertente!!!</p>\r\n', 'upload/ent6/1/bambini_zuccaPic.gif', 'upload/ent6/1/bambini_zucca.gif', 25, b'1', NULL),
(4, 'Margherita', '<p>\r\n	Si dice abbia facolt&agrave; profetiche. Gli innamorati la sfogliano per sapere se il loro amore &egrave; ricambiato.</p>\r\n<div style="overflow: hidden; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); text-align: left; text-decoration: none; border: medium none;">\r\n	&nbsp;</div>\r\n<div style="overflow: hidden; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); text-align: left; text-decoration: none; border: medium none;">\r\n	E&rsquo; il simbolo della semplicit&agrave;, freschezza e purezza.</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 'upload/ent6/1/margherita-guruPic.jpg', 'upload/ent6/1/margherita-guru.jpg', 8.9, b'1', NULL),
(5, 'Titti&Silvestro', '<p>\r\n	Nonostante le diffuse voci che vorrebbero Titti di sesso femminile, &egrave; dimostrato che il personaggio sia sempre stato maschio; cosa confermata anche da Titti stesso nella serie animata I misteri di Titti e Silvestro, e in parecchi fumetti della Warner. D&#39;altro canto, la sua specie &egrave; ambigua; rappresentato come un giovane canarino domestico dalle lunghe ciglia, pi&ugrave; consone ad un classico personaggio femminile.</p>\r\n<p>\r\n	Silvestro &egrave; invece un gatto che si vuole mangiare Titti.</p>\r\n', 'upload/ent6/1/titti595Picc.jpg', 'upload/ent6/1/titti595.jpg', 8.7, b'0', NULL),
(6, 'Sorriso', '<p>\r\n	Un bellissimo sorriso per la tua maglietta!</p>\r\n<p>\r\n	...ci vogliono settantadue muscoli per fare il broncio ma solo dodici per sorridere. Provaci per una volta. (Mordecai Richler)</p>\r\n', 'upload/ent6/1/SorrisoPic.jpg', 'upload/ent6/1/Sorriso.jpg', 4.5, b'1', NULL),
(7, 'Sole', '<p>\r\n	Quando il sole splende, non ti curar della luna.</p>\r\n', 'upload/ent6/1/solePic.png', 'upload/ent6/1/sole.png', 10, b'1', 5),
(8, 'Gatto e Luna', '<p>\r\n	Gatto e Luna molto suggestivi.</p>\r\n<p>\r\n	Il gatto lecca i raggi di luna nella scodella pensando siano latte.</p>\r\n', 'upload/ent6/1/gatto-e-lunaPic.jpg', 'upload/ent6/1/gatto-e-luna.jpg', 10, b'1', 4),
(9, 'Diciassette', '<p>\r\n	Dicono che 17 porta sfiga, ma questo perter&agrave; a tutti coloro che lo indossano una fortuna sfacciata!</p>\r\n', 'upload/ent6/2/600px-Alabama_17.svg.png', 'upload/ent6/1/600px-Alabama_17.svg.png', 10, b'1', 10),
(10, 'Gatto17', '<p>\r\n	Venerd&igrave; 17 Gatto</p>\r\n', NULL, 'upload/ent6/1/venerdì 17_gatto nero.jpg', 10, b'1', 10),
(11, 'Spongebob', '<p>\r\n	<b></b>SpongeBob SquarePants: &egrave; una spugna di mare, sempre allegra e felice. Lavora al Krusty Krab, una paninoteca sottomarina, dove cucina i Krabby Patty, i panini pi&ugrave; gustosi dell&#39;Oceano. Abita nella citt&agrave; di Bikini Bottom e la sua casa &egrave; un ananas. I suoi hobby sono andare a caccia di meduse, fare bolle di sapone ed allenarsi con la sua amica Sandy nel karate). Cerca ogni settimana di prendere la patente, ma non ci riesce mai.</p>\r\n', 'upload/ent6/1/spongebob_1Pic.jpg', 'upload/ent6/1/spongebob_1.jpg', 15.9, b'0', NULL),
(13, 'Smile Spongebob', '<p>\r\n	<strong>T-shirt Cartoni Animati Spongebob, originale.</strong></p>\r\n<p>\r\n	Originale e simmpatico faccione di un grande amico come Spongebob</p>\r\n', 'upload/ent6/2/SmileSpongebobPic.jpg', 'upload/ent6/2/SmileSpongebob.jpg', 9.9, b'0', NULL);

--
-- Dump dei dati per la tabella 'stampatore'
--

INSERT INTO stampatore (user_oid, matricola) VALUES
(2, 'P42L000'),
(7, 'P56Q095'),
(13, 'PY89J000');

--
-- Dump dei dati per la tabella 'taglia'
--

INSERT INTO taglia (oid, nome) VALUES
(1, 'Small'),
(2, 'Medium'),
(3, 'Large'),
(4, 'Extra Large'),
(5, 'Extra Small'),
(6, 'Extra Extra Large');

--
-- Dump dei dati per la tabella 'tema'
--

INSERT INTO tema (oid, nome) VALUES
(1, 'Natale'),
(2, 'Pasqua'),
(3, 'Halloween'),
(4, 'Animali'),
(5, 'Natura'),
(6, 'Varie Bimbi'),
(7, 'Cartoons');

--
-- Dump dei dati per la tabella 'tema_stampa'
--

INSERT INTO tema_stampa (tema_oid, stampa_oid) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 9),
(4, 2),
(4, 5),
(4, 8),
(5, 4),
(5, 7),
(6, 6),
(7, 5),
(7, 11),
(7, 13);

--
-- Dump dei dati per la tabella 'template'
--

INSERT INTO template (maglietta_oid, dimensionefronte, dimensioneretro, stampa_oid, stampa_oid_2) VALUES
(4, 1, NULL, 4, NULL),
(6, NULL, 0.5, NULL, 5),
(7, 1, NULL, 6, NULL),
(8, 1, NULL, 11, NULL),
(9, 1, NULL, 13, NULL);

--
-- Dump dei dati per la tabella 'user'
--

INSERT INTO user (oid, username, password, email, lastcheck, group_oid) VALUES
(1, 'cliente', 'cliente', 'cliente@example.com', '2011-12-15 22:07:32', 1),
(2, 'P42L000', 'stampatore', 'stampatore@example.com', '2011-12-17 23:03:20', 2),
(3, 'amministratore', 'amministratore', 'amministratore@example.com', NULL, 3),
(4, 'marco', 'marco', 'marco.iora@gmail.com', '2011-12-15 22:23:40', 1),
(5, 'roberta', 'roberta', 'roberta.lorenzi@gmail.com', '2011-12-17 23:03:40', 1),
(7, 'P56Q095', 'stampatore01', '56@qwer.ty', NULL, 2),
(8, 'giulio', 'giulio', 'giulio.verdi@miamail.com', '2011-12-05 15:31:04', 1),
(9, 'massimo', 'massimo', 'massimo.bianchi@mailmia.it', NULL, 1),
(10, 'rosalba', 'rosalba', 'rosalba.mazzini@gmail.com', '2011-12-15 22:21:45', 1),
(11, 'paolo', 'paolino10', 'rossi.paolo@gmail.com', NULL, 1),
(12, 'pierino', 'pierino01', 'pierino.lapeste@gmail.com', NULL, 1),
(13, 'PY89J000', 'stampatore01', 'py89j000@shirtshop.com', NULL, 2);

--
-- Dump dei dati per la tabella 'user_group'
--

INSERT INTO user_group (user_oid, group_oid) VALUES
(1, 1),
(2, 2),
(3, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SET FOREIGN_KEY_CHECKS = 1;