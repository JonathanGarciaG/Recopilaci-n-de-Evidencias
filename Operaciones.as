package  {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	
	public class Operaciones extends MovieClip {
		//variables que usaremos para realizar las operaciones
		//guarda los nombres del ejercicio 1
		var nombres:Array=new Array();
		//guarda las calificaciones del ejercicio 1
		var calificaciones:Array=new Array();
		//guarda la suma para calcular al promedio del ejercicio 2
		var suma:Number=0;
		//guarda el promedio del ejercicio 2		
		var promedio:Number=0;
		//guarda los numeros del ejercico 2
		var Numeros:Array=new Array();
		//guarda las posiciones de los valores nulos del ejercicio 2
		var numNulos:Array=new Array();
		
		//metodo para guardar Nombre y calificacion de usuario
		function fguardar (e:MouseEvent):void{
			resultado.text="";
			if( isNaN(Number(nombre_txt.text)) || nombre_txt.text!=""){//validacion de los datos Nombre
				if(isNaN(Number(cal_txt.text)) || Number(cal_txt.text)>100){//validacion de datos Calificacion
					resultado.text="Error en calificacion";
				}else{
					nombres.push(nombre_txt.text);
					calificaciones.push(Number(cal_txt.text));
					nombre_txt.text="";
					cal_txt.text="";
				}
			}else{
				resultado.text="Error en nombre";
			}
		}
			
		//funcion boton 1 ejercicio 1
		function ejercicio1 (e:MouseEvent):void{
			gotoAndStop(2);
			ft2();
		}
		
		function ft2 (){ //funcion para activar los listener del fotograma 2
			portada.addEventListener(MouseEvent.CLICK,fportada);
			guardar.addEventListener(MouseEvent.CLICK,fguardar);
			imprimir.addEventListener(MouseEvent.CLICK,fimprimir);
		}
		
		//funcion boton 2 ejercicio 2
		function ejercicio2 (e:MouseEvent):void{
			gotoAndStop(3);
			ft3();
		}
		
		function ft3 (){// funcion para activar los listener del fotograma 3
			portada.addEventListener(MouseEvent.CLICK,fportada);
			guardarnum.addEventListener(MouseEvent.CLICK,fguardarnum);
			mostrarArray.addEventListener(MouseEvent.CLICK,fmostrar);
		}
		
		

		function fguardarnum (e:MouseEvent):void{//funcion para guardar el numero del ejrcicio 2
			
			if(isNaN(Number(numero.text))){//validacion de numero
				numero.text="Solo numeros";
			}else{
				Numeros.push(numero.text);
			}
			numero.text="";
		}

		function fmostrar (e:MouseEvent):void{//funcion para imprimir en el textArea el contenido del array
			Arraytxt.text="";//se limpia el txt area
			for(var j=0;j<Numeros.length;j++){//ubicacion de las posiciones nulas
				if(Numeros[j]==""){
					Numeros[j]=0;
					numNulos.push(j);
				}
		}
		Arraytxt.text="Array: "+"\n"+Numeros+"\n"+ "Posiciones valores nulos: "+numNulos+"\n";
		Numeros.reverse();//se invierte el array
		
		numNulos=new Array();//se vacia el array de numeros nulos
		for(var k=0;k<Numeros.length;k++){//ubicacion de las posiciones nulas en el array inverso
				if(Numeros[k]==""){
					Numeros[k]=0;
					numNulos.push(k);
				}
		}
		Arraytxt.text=Arraytxt.text+"Array invertido: "+"\n"+Numeros+"\n"+ "Posiciones valores nulos: "+numNulos;
		Numeros.reverse();//se invierte al contenido original del array
		numNulos=new Array();//se vacia el array de numeros nulos
		}
		
		//Operaciones inciales, Tweens y listener de los botones
		function Operaciones () {
			ej1.addEventListener(MouseEvent.CLICK,ejercicio1);
			ej2.addEventListener(MouseEvent.CLICK,ejercicio2);
			var upv_mcc:Tween  = new Tween(upv_mc,"y",Bounce.easeOut,-100,upv_mc.y,4,true);
			var upv_mcc2:Tween  = new Tween(upvlogo_mc,"y",Bounce.easeOut,-100,upvlogo_mc.y,4,true);
			var nombre_mcc:Tween = new Tween(nombre_mc,"x",None.easeOut,-300,nombre_mc.x,3,true);
			var nombrep_mcc:Tween = new Tween(profe_mc,"x",None.easeOut,800,profe_mc.x,3,true);
			var pra_mcc:Tween = new Tween(pra_mc,"x",None.easeOut,550,pra_mc.x,3,true);
			var hm_mcc:Tween = new Tween(hm_mc,"x",None.easeOut,-300,hm_mc.x,3,true);
			var iti_mcc:Tween  = new Tween(iti_mc,"y",Bounce.easeInOut,800,iti_mc.y,3,true);
		}
		
		//funcion para activar los listener de fotograma 1
		function ft1 (){
			ej1.addEventListener(MouseEvent.CLICK,ejercicio1);
			ej2.addEventListener(MouseEvent.CLICK,ejercicio2);
		}
		
		
		//funcion para imprimir los resultados del ejecricio 1
		function fimprimir (e:MouseEvent):void{
			txtA.text="";
		if(calificaciones.length==0){
			resultado.text="Inserta Datos";
		}else{
			for(var i=0;i<calificaciones.length;i++){//suma de las calificaiones y impresion de los datos
				suma=suma+calificaciones[i];
				txtA.text=txtA.text+" "+nombres[i]+" "+calificaciones[i]+"\n"
			}
				promedio=suma/(calificaciones.length);//calculo del promedio
				suma=0;
				resultado.text="Promedio: ";
				prom.text=promedio+"";
			}
		}

		//funcion para regresar a la portada
		function fportada (e:MouseEvent):void{
			gotoAndStop(1);
			ft1();
		}

	}
	
}
