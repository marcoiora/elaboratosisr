<html>
<head>
<style type='text/css'>
body,td {font-family: "Trebuchet MS", sans-serif; font-size: 13px;}
td, th {border: 1px solid #888;padding: 10px;}
.descrizione {width: 60%;}
table {border-collapse:separate; width: 800px;}
th {color: white;font-size: 16px;text-shadow:1px 1px 1px #568F23;border:1px solid #93CE37;
border-bottom:3px solid #9ED929;
    background-color:#9DD929;
    background:-webkit-gradient(
        linear,
        left bottom,
        left top,
        color-stop(0.02, rgb(123,192,67)),
        color-stop(0.51, rgb(139,198,66)),
        color-stop(0.87, rgb(158,217,41))
        );
    background: -moz-linear-gradient(
        center bottom,
        rgb(123,192,67) 2%,
        rgb(139,198,66) 51%,
        rgb(158,217,41) 87%
        );
    -webkit-border-top-left-radius:5px;
    -webkit-border-top-right-radius:5px;
    -moz-border-radius:5px 5px 0px 0px;
    border-top-left-radius:5px;
    border-top-right-radius:5px;}
td {
	padding:10px;
    text-align:center;
    background-color:#DEF3CA;
    border: 2px solid #E7EFE0;
    -moz-border-radius:2px;
    -webkit-border-radius:2px;
    border-radius:2px;
    color:#666;
    text-shadow:1px 1px 1px #fff;
}

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
echo "<th class='descrizione'>Descrizione</th>";
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