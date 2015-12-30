<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
// Conectamos con la base de datos
$conn = new mysqli("localhost", "root", "", "mydb");
$conn->set_charset("utf8");
// comprobar la conexión
if ($conn->connect_errno) {
    printf("Falló la conexión: %s\n", $conn->connect_error);
    exit();
}
// Ejecutamos una consulta a la base de datos por todas la imagenes
$consulta = "SELECT Nombre,foto FROM pelicula ";
$resultado = $conn->query($consulta);
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>InfoMovie</title>
		
		<script src="jquery-2.1.4.min.js"></script>
		<!--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
    	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
		</head>
	<body>
		
		<nav class="navbar navbar-inverse">
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="infoMovie.php">InfoMovie</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Generos<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="genero.php?genero='Accion'">Acción</a></li>
                  <li><a href="genero.php?genero='Aventura'">Aventura</a></li>
                  <li><a href="genero.php?genero='Belico'">Belico</a>
                  <li><a href="genero.php?genero='CIencia Ficcion'">Ciencia Ficción</a></li>
                  <li><a href="genero.php?genero='Comedia, Drama'">Comedia Drama</a>
                  <li><a href="genero.php?genero='Drama'">Drama</a>
                  <li><a href="genero.php?genero='Fantasia'">Fantasia</a>
                  <li><a href="genero.php?genero='Terror'">Terror</a></li>            
          </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Estrenos<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="estreno.php?año=2015">2015</a></li>
                  <li><a href="estreno.php?año=2014">2014</a></li>
                  <li><a href="estreno.php?año=2013">2013</a></li>
                  <li><a href="estreno.php?año=2012">2012</a></li>
                  <li><a href="estreno.php?año=2011">2011</a></li>
                  <li><a href="estreno.php?año=2010">2010</a></li>
                </ul>
              </li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Premiadas<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="premiada.php?premiada='Oscar'">Oscar</a></li>
                  <li><a href="premiada.php?premiada='Globo'">Globo de Oro</a></li>
                  <li><a href="premiada.php?premiada='Emmy'">Emmy</a></li>
                  <li><a href="premiada.php?premiada='Goya'">Goya</a></li>
                  <li><a href="premiada.php?premiada='SAG'">SAG</a></li>
                </ul>
              </li>
              <li role="presentation"><a href="registro.html">Registrar</a></li align="right">
              <li role="presentation"><a href="iniciosesion.html">Iniciar sesion</a></li align="right">
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </nav>
		<div align="center">
			<?php
			    //printf("<h4><span class='label label-info'>Mostrando %d imágenes</span></h4>", $resultado->num_rows);
			    while($fila = $resultado->fetch_array()) {
			        //$html = "<div class='col-sm-2 col-md-6'>";
			        $html = "<div class='col-sm-6 col-md-4'>";
			        $html .= "<h4> <span class='label label-warning'>".$fila['Nombre']."</span></h4>";
			        $imagen = $fila['foto'];
			        //$html .= "<img src='$imagen' class='img-circle' class='img-responsive'><br>";
			        $html .= "<img src='$imagen' width='250' height='250'>";
			        $info_peli="infopeliculas.php?peli=".$fila['Nombre'];
              $html.="<br>";
              $html .= "<a class='btn btn-xs btn-success' href='$info_peli'>Información</a><br>";
			        
			        $html .= "</div>";
			        print($html);
			    }
				$resultado->close();
				$conn->close();
			?>
		
		</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>

		<!-- Load Facebook SDK for JavaScript -->
  		<footer aling="left">
  			
    		<ul class="nav nav-tabs" role="tablist">
    			
        		<li role="presentation"><a href="#">Contactanos</a></li>
        		<li role="presentation"><a href="#">Sugerencias</a></li>
        		<li role="presentation"><a href="http://www.facebook.com/AQUI_TU_PAGINA" target="_blank"><img alt="Siguenos en Facebook" src="https://lh6.googleusercontent.com/-CYt37hfDnQ8/T3nNydojf_I/AAAAAAAAAr0/P5OtlZxV4rk/s32/facebook32.png" width=32 height=32  /></a></li>
        		<li role="presentation"><a href="http://twitter.com/AQUI_TU_USUARIO" target="_blank"><img src="https://lh6.googleusercontent.com/--aIk2uBwEKM/T3nN1x09jBI/AAAAAAAAAs8/qzDsbw3kEm8/s32/twitter32.png" width=32 height=32 alt="Síguenos en Twitter" /></a></li>
        		<li role="presentation>"><a rel="author" href="https://plus.google.com/TU_ID_GOOGLE?rel=author" target="_blank"><img alt="Siguenos en Google+" src="https://lh5.googleusercontent.com/-F_FBKktZWZk/T3nN0v4FeAI/AAAAAAAAAsc/7dHTxkxn4cI/s32/google32.png" width=32 height=32/></a></li>
					
 
    		</ul>

		</footer>
	<!-- Inserta esta etiqueta en la sección "head" o justo antes de la etiqueta "body" de cierre. -->

</body>
</html>