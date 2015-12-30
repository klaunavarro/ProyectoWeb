//variable global con el objeto XMLHttpRequest
var xmlHttp;
function verificar_usuario(){
//1er paso crear instancia del objeto
	xmlHttp= new XMLHttpRequest();
	//2do paso Definimos la url de destino
	//entrega como arreglo el getElement...
	var input=document.getElementsByName("usuario")[0];
	var url='verifica_usuario.php?usuario='+ input.value;
	//3er paso indicar el función que manejará la respuesta.
	xmlHttp.onreadystatechange=alerta;
	//4to paso definir los parametros de envío
	xmlHttp.open("GET",url,true);
	//enviamos la solicitud
	xmlHttp.send("");

}
function alerta(){
	//Función que recibe los datos una vez vuelva la solicitud
	/*
	readyState indica el estado en que se encuentra la petición http, tiene
	5 valores posibles
	0->no inicializado
	1->cargando
	2->cargado[termino de carga]
	3->Interactuando
	4->Completado
	*/
	//alert(xmlHttp.readyState);
	if(xmlHttp.readyState==4 && xmlHttp.status==200){
		respuesta=xmlHttp.responseText;
		var span=document.getElementById("msj");
		if(respuesta=="s"){
			span.innerHTML="El usuario ya existe";
		}else{
			span.innner.HTTp="";

		}
	}

}