<?php
error_reporting(E_ALL);
ini_set('display_error',1);

$usuario=$_POST["usuario"];
$pass=$_POST["pass"];

$conn=new mysqli("localhost","root","","mydb");
$conn->set_charset("utf8");
if($conn->connect_errno){
	printf("fallo la conexión: %s\n", $conn->connect_error);
	// es %s por que es un string lo que entrega el eeror
	//print f imprimir con formato
	exit();
}
//insertarmos el nuevo usuario
//permite formatear la string y formatearlo
//se preveen errores con mysql_real_escape_string
$query="SELECT Username,Password from usuario where Username ='".$usuario."' and Password='".$pass."'";
//echo $query;
$result=$conn->query($query);
//verificamos si el registro tuvo exito, si se inserto
if($conn->affected_rows>0){
	print("<h6>Se ha iniciado sesion correctamente</h6>");
}else{
	print("<h6>El usuario no existe </h6>");
}
            $consulta = "SELECT Username,nombre,Email,Foto FROM usuario WHERE Username="."'".$usuario."'";
            $resultado = $conn->query($consulta);
            $consulta2 = "SELECT NombrePeli FROM usuariofavorito,usuario WHERE NombreUsuario="."'".$usuario."'";
            $resultado2 = $conn->query($consulta2);

            $consulta3 = "SELECT Nombre from pelicula";
            $resultado3 = $conn->query($consulta3);
            //agregar nuevo favorito
             
            //$consulta4 = sprintf("INSERT INTO usuariofavorito (NombreUsuario, NombrePeli) VALUES ('%s', '%s')",$usuario,$Nombre);
            //echo $consulta4;
            // Ejecutamos la consulta en la base de datos
            //$resultado4 = $conn->query($consulta4);
            // Comprobamos si se insertó el registro
            //if ($conn->affected_rows > 0) {
              //  print("<h1> <span class='label label-primary'>La imagen ha sido creada</span></h1><br>");
            //} else {
              //  print("<h1> <span class='label label-danger'>Problemas al crear la imagen</span></h1><br>");
            //}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"> 
		<title>Perfil del usuario</title>
		<script src="jquery-2.1.4.min.js"></script>
        <!--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">-->
        <link type="text/css" rel="stylesheet" href="estilo.css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</head>
	<body>

        <div align="middle">
            <div id="encabezado">
                <h2>Cuenta de usuario</h2>
            </div>
             <?php
                    $fila = $resultado->fetch_array();
                    $imagen = $fila['Foto'];
                    $html1= "<img src='$imagen' class='img-circle' class='img-responsive' width='300' height='300'><br> ";
                    //$html1.="<h2>".'Usuario'."</h2>";
                    $html1 .= "<h4> <span class='label label-primary'>".$fila['Username']."</span></h4>";
                    $html1.= "<h4> <span class='label label-primary'>".$fila['nombre']."</span></h4>";
                    $html1 .="<h4> <span class='label label-primary'>".$fila['Email']."</span></h4>";   
                    print($html1);
                    $resultado->close();
                
            ?>
            <br>
            <br>
            <!--<img src="img/imagen1.jpg" width="250px" align="left"/>-->
        </div>
        <button type="button" class="btn btn-success" onclick="window.location.href='sugerencia.html'">Sugerir Pelicula</button>
        <h3>Peliculas Favoritas</h3>
        <?php
                //printf("<h4><span class='label label-info'>Mostrando %d imágenes</span></h4>", $resultado->num_rows);
               
                while($fila = $resultado2->fetch_array()) {
                    //$html = "<div class='col-sm-2 col-md-6'>";                    
                    $html = "<h4> <span class='label label-primary'>".$fila['NombrePeli']."</span></h4>";                  
                    //$html .= "<img src='$imagen' width='300' height='300'>";
                    //$info_peli="infopeliculas.php?peli=".$fila['Nombre'];
                    //$html .= "<a class='btn btn-xs btn-success' href='$info_peli'>Información</a><br>";
                    print($html);
                }
                $resultado2->close();
                $conn->close();       
            ?>

            <h3 style="color:red">Lista de peliculas a elegir</h3>
            <?php
             while($fila =$resultado3->fetch_array()){
                    $html2 = "<h4> <span class='label label-primary'>".$fila['Nombre']."</span>";
                    $agregar = "login.php?Nombre=".$fila["Nombre"];
                    //echo $fila["Nombre"];
                    $html2 .= "<a class='btn btn-xs btn-success' href='$agregar'>Agregar</a><br>";
                    $html2.="</h4>";
                    print($html2);

                }
                $resultado3->close();
             
            ?>
	</body>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</html>


















