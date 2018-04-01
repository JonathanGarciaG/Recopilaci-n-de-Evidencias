package {
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;

	public class Main2 extends MovieClip {
		var n:Number=1;
		var operacion:String;
		var n1:int;
		var n2:int;
		var n3:int;
		var n4:int;

		public function Main2() {
			stop();
			inicio.addEventListener(MouseEvent.CLICK, finicio);
			var upv_mcc: Tween = new Tween(upv_mc, "y", Bounce.easeOut, -100, upv_mc.y, 4, true);
			var upv_mcc2: Tween = new Tween(upvlogo_mc, "y", Bounce.easeOut, -100, upvlogo_mc.y, 4, true);
			var nombre_mcc: Tween = new Tween(nombre_mc, "x", None.easeOut, -300, nombre_mc.x, 3, true);
			var nombrep_mcc: Tween = new Tween(profe_mc, "x", None.easeOut, 800, profe_mc.x, 3, true);
			var pra_mcc: Tween = new Tween(pra_mc, "x", None.easeOut, 550, pra_mc.x, 3, true);
			var hm_mcc: Tween = new Tween(hm_mc, "x", None.easeOut, -300, hm_mc.x, 3, true);
			var iti_mcc: Tween = new Tween(iti_mc, "y", Bounce.easeInOut, 800, iti_mc.y, 3, true);
		}
		
		function finicio(e:MouseEvent):void{
			gotoAndStop(2);
			ft2();
		}
		
		
		function ft2(){
			ingresar.addEventListener(MouseEvent.CLICK, fingresar);
			calcular.addEventListener(MouseEvent.CLICK, fcalcular);
			msj.text="Numero: "+n;
			calcular.enabled=false;
		}
		
		function fingresar(e:MouseEvent):void{
			if(numero.text=="" || isNaN(Number(numero.text))){
				numero.text="Ingresar numero";
			}else{
				if(n==1){
					n1=int(numero.text);
				}
				if(n==2){
					n2=int(numero.text);
				}
				if(n==3){
					n3=int(numero.text);
				}
				if(n==4){
					n4=int(numero.text);
				}
				if((int(numero.text)/2)==0){
					operacion="suma";
				}else{
					operacion="promedio";
				}
				if(int(numero.text)<0){
					operacion="resta";
				}
				n++;
				msj.text="Numero: "+n;
				if(n==5){
					ingresar.enabled=false;
					calcular.enabled=true;
				}
				numero.text="";
			}
			
		}
		
		function fcalcular(e:MouseEvent):void{
			if(operacion=="suma"){
				res.text=(n1+n2+n3+n4)+"";
			}
			if(operacion=="resta"){
				res.text=(n1-n2-n3-n4)+"";
			}
			if(operacion=="promedio"){
				res.text=((n1+n2+n3+n4)/4)+"";
			}
		}

	}

}