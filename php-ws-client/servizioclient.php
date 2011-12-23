<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>

<h2>Le ultime offerte</h2>
<?php

ini_set("soap.wsdl_cache_enabled", "0");

$client = new SoapClient("http://127.0.0.1:8080/ShirtShop/Servizi/wsdl.do");

// Servizio 1

try {
    $xmldata = $client->getListaProposte();
    $listaProposte = $xmldata->Template->Instance;
}
catch (SoapFault $e) {
    var_dump($e);
}

echo "<table>";
echo "<thead><tr>";
echo "<th>Nome</th>";
echo "<th class='descrizione'>Descrizione</th>";
echo "<th>Prezzo</th>";
echo "</tr></thead><tbody>";
foreach ($listaProposte as $row) {
    echo "<tr>";
    echo "<td>";
    printf("<a href='%s'>%s</a>", $row->URL, $row->nome);
    echo "</td>";

    echo "<td>{$row->descrizione}</td>";

    printf("<td>%s</td>", number_format((float)$row->prezzo) . " &euro;");

    echo "</tr>";
}
echo "</tbody></table>";

// Servizio 2

$url = $base_url;


?>
</body>
</html>