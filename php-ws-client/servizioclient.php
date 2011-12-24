<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css" />
<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.ui.datepicker-it.js"></script>
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
?>
<h2>Ultimi ordini</h2>
<p>Dalla data: <input type="text" id="datepicker" value="<?php echo date("d/m/Y") ?>"></p>
<script>
function ajaxGetUltimiOrdini() {
    $.getJSON("ajax.php", {
        'data': $("#datepicker").val(),
        "service": "getNuoviOrdini"
    }, function(json) {
        if (! json.Ordine) return;

        $("#tblUltimiOrdini tbody").empty();
        for (var i = 0; i < json.Ordine.length; i++) {
            var ord = json.Ordine[i];
            var dataOra = ord.dataOraConferma.replace("T",' ');
            dataOra = dataOra.substr(0,dataOra.lastIndexOf('.'));
            console.log(ord);
            $("#tblUltimiOrdini tbody").append(
                $("<tr />").append(
                    $("<td />").html(ord.oid).after(
                        $("<td />").html(dataOra)
                    )
                )
            );
            //dataOraConferma
            //oid
        }
    });
}

$(function() {
    $.datepicker.setDefaults( $.datepicker.regional[ "it" ] );
    $("#datepicker" ).datepicker({
        dateFormat: "dd/mm/yy",
        onSelect: ajaxGetUltimiOrdini
    });
    ajaxGetUltimiOrdini();
});
</script>
<table id="tblUltimiOrdini">
    <thead>
        <tr>
            <th>ID Ordine</th>
            <th>Data/ora conferma</th>
        </tr>
    </thead>
    <tbody>

    </tbody>
</table>
<?php


?>
</body>
</html>