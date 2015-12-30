<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Obtenemos la pk de la imagen que se desea editar
$pk_genero = $_GET["genero"];
// Conectamos con la base de datos
$conn = new mysqli("localhost", "root", "", "mydb");
$conn->set_charset("utf8");
// comprobar la conexión
if ($conn->connect_errno) {
    printf("Falló la conexión: %s\n", $conn->connect_error);
    exit();
}
//print($pk_genero);
// Traemos los datos de la imagen a editar
$consulta = "SELECT Foto, Nombre FROM pelicula_has_genero,pelicula WHERE Pelicula_Nombre=Nombre and Genero_Nombre=" .$pk_genero;
$resultado = $conn->query($consulta);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Por genero</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div align="center">
	    <h1><span class="label label-warning">Peliculas por Generos</h1>
	<?php
	    printf("<br>");
	    //printf("<h4><span class='label label-info'>Mostrando %d imágenes</span></h4>", $resultado->num_rows);
	    while($fila = $resultado->fetch_array()) {
	        //$html = "<div class='col-sm-2 col-md-6'>";
	        //$html = "<div class='col-sm-4 col-md-6'>";
	        //echo $fila['Pelicula_Nombre'];
	        $html = "<div class='col-sm-6 col-md-4'>";
	        $nombre=$fila['Nombre'];
	        $html = "<h4><span class='label label-info'>".$fila['Nombre']."<h4>";

	        //$html = "<h4>".$fila['Foto']."<h4>";
	        $imagen = $fila['Foto'];
	        $html .= "<img src='$imagen' width='250' height='250'><br>";
	        //$html .= "<img src='$imagen' class='img-circle' width='350' height='350'><br>";
	        //$editar_imagen = "infopeliculas.php?pk_imagen=".$fila['Nombre'];
	        $info_peli="infopeliculas.php?peli=".$fila['Nombre'];
	        $html .= "<a class='btn btn-xs btn-success' href='$info_peli'>Información</a><br>";

	        //$editar_imagen = "infopeliculas.php?pk_imagen=".$fila['Nombre'];
	        //$eliminar_imagen = "eliminar_imagen.php?pk_imagen=".$fila["id"];
	        //$html .="<a class='btn btn-xs btn-danger' href='$eliminar_imagen' onclick='return confirmar()'>Eliminar</a><br> ";
	        
	        //$html .= "</div><br>";
	        print($html);
	    }
	$resultado->close();
	$conn->close();
	?>
	</div>
</body>
</html>