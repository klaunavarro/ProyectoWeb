<?php
error_reporting(E_ALL);
ini_set('display_error',1);
$usuario=$_GET["Username"];
$conn= new mysqli("localhost","root","","mydb");
$conn->set_charset("utf8");
if($conn->connect_errno){
	printf("Fallo la conexion :%s\n",$conn->connect_error);
}
//consultar para verificar el nombre del usuario
$consulta=sprintf("SELECT *FROM usuario WHERE Username = '%s'",
	mysqli_real_escape_string($conn,$usuario));
$resultado=$conn->query($consulta);
//if ($resultado->num_rows>0){
//	print("s");

//}else{
//	print("n");
//}
 if($resultado->num_rows>0){
        echo '<div id="Error" style="color:red">Usuario ya existente!!!!</div>';
 }else{
        echo '<div id="Success" style="color:green">Usuario Disponible</div>';
}
?>