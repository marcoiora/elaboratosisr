<html>
<head>
<style type='text/css'>
body,td {font-family: sans-serif; font-size: 12px;}
td, th {border: 1px solid #888;padding: 4px;}
table {border-collapse:collapse;}
th {background-color: #35f;color: white;}
a, a:visited {color: #f60;font-weight: bold;}
</style>

</head>
<body>

<h2>Le ultime offerte</h2>
<?php

$base_url = "http://localhost:8080/ShirtShop/Servizi/";

// Servizio 1
$url = $base_url . "ListaProposte/getListaProposte.do";

$xmldata = file_get_contents($url);

$xmldoc = new SimpleXMLElement($xmldata);

$listaProposte = $xmldoc->Root[0]->Template[0]->Instance;
echo "";
echo "<table>";
echo "<thead><tr>";
echo "<th>Nome</th>";
echo "<th>Descrizione</th>";
echo "<th>Prezzo</th>";
echo "</tr></thead><tbody>";
$index = 0;
while (($row = $listaProposte[$index]) !== NULL) {
	echo "<tr>";
	echo "<td>";
	printf("<a href='%s'>%s</a>", $row->URL, $row->nome);
	echo "</td>";

	echo "<td>{$row->descrizione}</td>";

	printf("<td>%s</td>", number_format((float)$row->prezzo) . " &euro;");

	echo "</tr>";
	$index++;
}
echo "</tbody></table>";

?>
</body>
</html>