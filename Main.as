package {
	import flash.events.MouseEvent;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.Loader;
	import flash.net.URLRequest;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;

	public class Main extends MovieClip {
		var swfm: Loader = new Loader();
		var rprac1: URLRequest = new URLRequest("Practica No. 1 HM.swf");
		var rjuego1: URLRequest = new URLRequest("Practica No. 4 HM.swf");
		var rmultm1: URLRequest = new URLRequest("xml/practica 7.swf");

		public function Main() {
			stop();
			INICIO.addEventListener(MouseEvent.CLICK, finicio);

		}

		function finicio(event: MouseEvent): void {
			gotoAndStop(2);
			ventana1.width = 0;
			ventana2.width = 0;
			ventana3.width = 0;
			btnmenu.visible = false;
			fondo.visible = false;
			removebuttons();
			prac.addEventListener(MouseEvent.CLICK, fpracticas);
			vj.addEventListener(MouseEvent.CLICK, fvj);
			multm.addEventListener(MouseEvent.CLICK, fmultm);
			ft2();
		}

		function removebuttons() {
			practica1.visible = false;
			juego1.visible = false;
			multm1.visible = false;
		}

		function fpracticas(event: MouseEvent): void {
			removebuttons();
			texto.text = "";
			ventana1.width = 0;
			ventana2.width = 0;
			ventana3.width = 0;
			stage.addEventListener(Event.ENTER_FRAME, v1);
		}

		function fvj(event: MouseEvent): void {
			removebuttons();
			texto.text = "";
			ventana1.width = 0;
			ventana2.width = 0;
			ventana3.width = 0;
			stage.addEventListener(Event.ENTER_FRAME, v2);
		}

		function fmultm(event: MouseEvent): void {
			removebuttons();
			texto.text = "";
			ventana1.width = 0;
			ventana2.width = 0;
			ventana3.width = 0;
			stage.addEventListener(Event.ENTER_FRAME, v3);
		}

		function v1(event: Event): void {
			ventana1.width += 80;
			if (int(ventana1.width) == 560) {
				stage.removeEventListener(Event.ENTER_FRAME, v1);
				texto.text = "Practicas";
				practica1.visible = true;
			}
		}

		function v2(event: Event): void {
			ventana2.width += 80;
			if (int(ventana2.width) == 560) {
				stage.removeEventListener(Event.ENTER_FRAME, v2);
				texto.text = "Videojuegos";
				juego1.visible = true;
			}
		}

		function v3(event: Event): void {
			ventana3.width += 80;
			if (int(ventana3.width) == 560) {
				stage.removeEventListener(Event.ENTER_FRAME, v3);
				texto.text = "Multimedia";
				multm1.visible = true;
			}
		}

		function ft2() {
			practica1.addEventListener(MouseEvent.CLICK, fpractica1);
			juego1.addEventListener(MouseEvent.CLICK, fjuego1);
			multm1.addEventListener(MouseEvent.CLICK, fmultm1);
			btnmenu.addEventListener(MouseEvent.CLICK, fvolver);
		}


		function fpractica1(event: MouseEvent): void {
			fondo.visible = true;
			//var strongeasein:Tween = new Tween(fondo,"y",Elastic.easeInOut,-1000,fondo.y,0.5,true);
			swfm.load(rprac1);
			addChild(swfm);
			btnmenu.visible = true;
		}


		function fjuego1(event: MouseEvent): void {
			fondo.visible = true;
			//var strongeasein:Tween = new Tween(fondo,"y",Elastic.easeInOut,-1000,fondo.y,0.5,true);
			swfm.load(rjuego1);
			addChild(swfm);
			btnmenu.visible = true;
		}


		function fmultm1(event: MouseEvent): void {
			fondo.visible = true;
			//var strongeasein:Tween = new Tween(fondo,"y",Elastic.easeInOut,-1000,fondo.y,0.5,true);
			swfm.load(rmultm1);
			addChild(swfm);
			btnmenu.visible = true;
		}


		function fvolver(event: MouseEvent): void {
			removeChild(swfm);
			btnmenu.visible = false;
			fondo.visible = false;
		}

	}

}