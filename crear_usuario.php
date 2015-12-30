<?php
error_reporting(E_ALL);
ini_set('display_error',1);
$archivo=$_FILES["imagen2"];
$usuario=$_POST["usuario"];
$nombre=$_POST["nombre"];
$correo=$_POST["correo"];
$pass=$_POST["pass"];
echo 'hola';
echo 'hola2';
// Directorio en el servidor donde guardamos las imágenes
// Este directorio debe tener permisos de escritura
$img_dir = "img/";
// Creamos el nombre de la imagen
$nombre_img = $img_dir.basename($archivo["name"]);
// Copiamos el archivo en el directorio
if(move_uploaded_file($archivo['tmp_name'], $nombre_img)) {
  //  print("El fichero se guardó correctamente<br>");
} else {
  //  print("No se pudo subir el archivo");
    exit();
}
//print($nombres.$usuarios.$pass);
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
$query=sprintf(
	"INSERT INTO usuario(Username,Nombre,Email,Password,Foto)".
	"VALUE ('%s','%s','%s','%s','%s')",
	mysqli_real_escape_string($conn,$usuario),
	mysqli_real_escape_string($conn,$nombre),
	mysqli_real_escape_string($conn,$correo),
	mysqli_real_escape_string($conn,$pass),
	mysqli_real_escape_string($conn,$nombre_img)
	);
$result=$conn->query($query);
//verificamos si el registro tuvo exito, si se inserto
if($conn->affected_rows>0){
	print("<h3>El usuario ha sido creado</h3>");
}else{
	print("<h3>Problemas al crear el registro </h3>");
}
print("<a href='index.php' >volver</a>");

?>