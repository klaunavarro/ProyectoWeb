<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Obtenemos la pk de la imagen que se desea editar
$peli = $_GET["peli"];
// Conectamos con la base de datos
$conn = new mysqli("localhost", "root", "", "mydb");
$conn->set_charset("utf8");
// comprobar la conexión
if ($conn->connect_errno) {
    printf("Falló la conexión: %s\n", $conn->connect_error);
    exit();
}

$consulta = "SELECT Nombre, Sinopsis, Idioma, Foto, Trailer,calidad,anio FROM pelicula WHERE  Nombre="."'".$peli."'";
$resultado = $conn->query($consulta);
?>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8">
    <title>Información pelicula</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="jquery, ajax, plugin" />
    <link rel="stylesheet" type="text/css" href="estilo_voto.css" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/rating.js"></script>
    <script type="text/javascript">
		$(document).ready(function() {
		    $('#star1').rating('vota.php', {maxvalue: 5, curvalue:1, id:20});
		});
	</script>
</head>
<body background="fondo.jpg">
	
	<div align="left">
	    <h1 align="left"><span class="label label-info">Información Pelicula</h1>
	<?php
	    printf("<br>");
	    //printf("<h4><span class='label label-info'>Mostrando %d imágenes</span></h4>", $resultado->num_rows);
	    while($fila = $resultado->fetch_array()) {
	    	$html = "<div class='col-sm-4'>";
	    	$html = "<div id='star1' class='rating'>&nbsp;</div>";
	        $html .= "<h3><font color='white'><strong>Nombre:</strong> ".$fila['Nombre']."<h3>";
	        
	        $html .= "<h4 align='center' ><color: red>".$fila['Trailer'];
	        $html .= "<br>";
	        $html .= "<h4 align='center'><strong>Sinopsis:</strong>".$fila['Sinopsis'];
	        $html .= "<h4 align='center'><strong>Idioma Original:</strong> ".$fila['Idioma'];
	        $html .= "<h4 align='center'><strong>Calidad:</strong> ".$fila['calidad'];
	        $html .= "<h4 align='center'><strong>Año: </strong>".$fila['anio'];
	        $html .= "</h4>";
	        print($html);
	    }
	$resultado->close();
	$conn->close();
	?>
	</div>
</body>
</html>