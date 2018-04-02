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
		var tipotween:String="";
		var tweeni:int=0;
		var tweenf:int=0;
		var swfm: Loader = new Loader();
		var rprac1: URLRequest = new URLRequest("Practica No. 1 HM.swf");
		var rprac2: URLRequest = new URLRequest("Practica No. 2 HM.swf");
		var rprac3: URLRequest = new URLRequest("Practica No. 3 HM.swf");
		var rprac5: URLRequest = new URLRequest("Practica No. 5 HM.swf");
		var rprac52: URLRequest = new URLRequest("Practica No. 5-2 HM.swf");
		var rprac6: URLRequest = new URLRequest("Practica No. 6 HM.swf");
		var rprac8: URLRequest = new URLRequest("Practica 8.swf");
		var rprac9: URLRequest = new URLRequest("Practica 9.swf");
		var rprac11: URLRequest = new URLRequest("Practica 11.swf");
		var rjuego1: URLRequest = new URLRequest("Practica No. 4 HM.swf");
		var rjuego2: URLRequest = new URLRequest("Proyecto Unidad 1 Memorama Final.swf");
		var rjuego3: URLRequest = new URLRequest("Proyecto Serpientes y Escaleras.swf");
		var rmultm1: URLRequest = new URLRequest("practica 7.swf");
		var rmultm2: URLRequest = new URLRequest("practica 7 2.swf");
		var rmultm3: URLRequest = new URLRequest("Practica 10.swf");
		//var rmultm4: URLRequest = new URLRequest("");
		
		public function Main() {
			stop();
			INICIO.addEventListener(MouseEvent.CLICK, finicio);
			var tween1:Tween=new Tween(upv, "scaleX", Strong.easeInOut, 0, 1, 1, true);
			var tween2:Tween=new Tween(upv, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var tween3:Tween=new Tween(hm, "x", Strong.easeInOut, -1000, hm.x, 2, true);
			var tween4:Tween=new Tween(upvlogo, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var tween5:Tween=new Tween(alumno, "x", Strong.easeInOut, 1000, alumno.x, 2, true);
			var tween6:Tween=new Tween(grupo, "x", Strong.easeInOut, -1000, grupo.x, 2, true);
			var tween7:Tween=new Tween(profesor, "x", Strong.easeInOut, 1000, profesor.x, 2, true);
			var tween8:Tween=new Tween(titulo, "y", Strong.easeInOut, 1000, titulo.y, 2, true);
		}

		function finicio(event: MouseEvent): void {
			gotoAndStop(2);
			btnmenu.visible = false;
			fondo.visible = false;
			removebuttons();
			prac.addEventListener(MouseEvent.CLICK, fpracticas);
			vj.addEventListener(MouseEvent.CLICK, fvj);
			multm.addEventListener(MouseEvent.CLICK, fmultm);
			prac.addEventListener(MouseEvent.ROLL_OVER, s1);
			vj.addEventListener(MouseEvent.ROLL_OVER, s2);
			multm.addEventListener(MouseEvent.ROLL_OVER, s3);
			prac.addEventListener(MouseEvent.ROLL_OUT, s11);
			vj.addEventListener(MouseEvent.ROLL_OUT, s22);
			multm.addEventListener(MouseEvent.ROLL_OUT, s33);
			select1.alpha=0;
			select2.alpha=0;
			select3.alpha=0;
			selectionn1.alpha=0;
			selectionn2.alpha=0;
			selectionn3.alpha=0;
			ft2();
		}
		
		function s1(event: Event): void {
			var selection:Tween=new Tween(select1, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2:Tween=new Tween(selectionn1, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move:Tween=new Tween(selectionn1, "x", Strong.easeInOut, selectionn1.x+10, 22.45, 1, true);
			var iconmove:Tween=new Tween(icono1, "x", Strong.easeInOut, select1.x, 226, 0.5, true);
			var iconan:Tween=new Tween(icono1, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s2(event: Event): void {
			var selection:Tween=new Tween(select2, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2:Tween=new Tween(selectionn2, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move:Tween=new Tween(selectionn2, "x", Strong.easeInOut, selectionn2.x+10, 22.45, 1, true);
			var iconmove:Tween=new Tween(icono2, "x", Strong.easeInOut, select2.x, 219, 0.5, true);
			var iconan:Tween=new Tween(icono2, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s3(event: Event): void {
			var selection:Tween=new Tween(select3, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2:Tween=new Tween(selectionn3, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move:Tween=new Tween(selectionn3, "x", Strong.easeInOut, selectionn3.x+10, 22.45, 1, true);
			var iconmove:Tween=new Tween(icono3, "x", Strong.easeInOut, select3.x, 219, 0.5, true);
			var iconan:Tween=new Tween(icono3, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s11(event: Event): void {
			var selection:Tween=new Tween(select1, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2:Tween=new Tween(selectionn1, "alpha", Strong.easeInOut, selectionn1.x, 0, 0.5, true);
			var iconan:Tween=new Tween(icono1, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}
		function s22(event: Event): void {
			var selection:Tween=new Tween(select2, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2:Tween=new Tween(selectionn2, "alpha", Strong.easeInOut, selectionn2.x, 0 , 0.5, true);
			var iconan:Tween=new Tween(icono2, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}
		function s33(event: Event): void {
			var selection:Tween=new Tween(select3, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2:Tween=new Tween(selectionn3, "alpha", Strong.easeInOut, selectionn3.x, 0, 0.5, true);
			var iconan:Tween=new Tween(icono3, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}

		function removebuttons() {
			practica1.visible = false;
			practica2.visible = false;
			practica3.visible = false;
			practica5.visible = false;
			practica52.visible = false;
			practica6.visible = false;
			practica8.visible = false;
			practica9.visible = false;
			practica11.visible = false;
			juego1.visible = false;
			juego2.visible = false;
			juego3.visible = false;
			multm1.visible = false;
			multm12.visible = false;
			multm2.visible = false;
			multm3.visible = false;
			ventana1.visible = false;
			ventana2.visible = false;
			ventana3.visible = false;
			selectionn1.alpha=0;
			selectionn2.alpha=0;
			selectionn3.alpha=0;
			select1.alpha=0;
			select2.alpha=0;
			select3.alpha=0;
			icono1.alpha=0;
			icono2.alpha=0;
			icono3.alpha=0;
		}
		
		function addbuttons1() {
			practica1.visible = true;
			practica2.visible = true;
			practica3.visible = true;
			practica5.visible = true;
			practica52.visible = true;
			practica6.visible = true;
			practica8.visible = true;
			practica9.visible = true;
			practica11.visible = true;
		}
		
		function addbuttons2() {
			juego1.visible = true;
			juego2.visible = true;
			juego3.visible = true;
		}
		
		function addbuttons3() {
			multm1.visible = true;
			multm12.visible = true;
			multm2.visible = true;
			multm3.visible = true;
		}

		function fpracticas(event: MouseEvent): void {
			removebuttons();
			var random:int = Math.random()*3;
			if (random==0){
				tipotween="rotationY";
				tweeni=180;
				tweenf=360
			}
			if (random==1){
				tipotween="rotationX";
				tweeni=180;
				tweenf=360
			}
			if (random==2){
				tipotween="rotationY";
				tweeni=180;
				tweenf=0;
			}
			select1.alpha=1;
			selectionn1.alpha=1;
			ventana1.visible=true;
			texto.text = "Practicas";
			var giro:Tween=new Tween(ventana1, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween:Tween=new Tween(texto, "scaleX", Regular.easeInOut, 0, 1, 0.5, true);
			var textoa:Tween=new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons1();
			showprac();
		}
		
		function showprac(){
			var p:Tween=new Tween(practica1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p2:Tween=new Tween(practica2, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p3:Tween=new Tween(practica3, "alpha", Regular.easeInOut, 0, 1, 3, true);
			var p5:Tween=new Tween(practica5, "alpha", Regular.easeInOut, 0, 1, 4, true);
			var p52:Tween=new Tween(practica52, "alpha", Regular.easeInOut, 0, 1, 5, true);
			var p6:Tween=new Tween(practica6, "alpha", Regular.easeInOut, 0, 1, 6, true);
			var p8:Tween=new Tween(practica8, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p9:Tween=new Tween(practica9, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p11:Tween=new Tween(practica11, "alpha", Regular.easeInOut, 0, 1, 2, true);
			
			var rp:Tween=new Tween(practica1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2:Tween=new Tween(practica2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3:Tween=new Tween(practica3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp5:Tween=new Tween(practica5, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp52:Tween=new Tween(practica52, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp6:Tween=new Tween(practica6, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp8:Tween=new Tween(practica8, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp9:Tween=new Tween(practica9, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp11:Tween=new Tween(practica11, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		function fvj(event: MouseEvent): void {
			removebuttons();
			var random:int = Math.random()*3;
			trace(random);
			if (random==0){
				tipotween="rotationY";
				tweeni=180;
				tweenf=360
			}
			if (random==1){
				tipotween="rotationX";
				tweeni=180;
				tweenf=360
			}
			if (random==2){
				tipotween="rotationY";
				tweeni=180;
				tweenf=0;
			}
			select2.alpha=1;
			selectionn2.alpha=1;
			ventana2.visible=true;
			texto.text = "Videojuegos";
			var giro:Tween=new Tween(ventana2, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween:Tween=new Tween(texto, "scaleX", Regular.easeOut, 0, 1, 0.5, true);
			var textoa:Tween=new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons2();
			showvj();
			//stage.addEventListener(Event.ENTER_FRAME, v2);
		}
		
		function showvj(){
			var p:Tween=new Tween(juego1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p2:Tween=new Tween(juego2, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p3:Tween=new Tween(juego3, "alpha", Regular.easeInOut, 0, 1, 3, true);
			
			var rp:Tween=new Tween(juego1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2:Tween=new Tween(juego2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3:Tween=new Tween(juego3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		function fmultm(event: MouseEvent): void {
			removebuttons();
			var random:int = Math.random()*3;
			trace(random);
			if (random==0){
				tipotween="rotationY";
				tweeni=180;
				tweenf=360
			}
			if (random==1){
				tipotween="rotationX";
				tweeni=180;
				tweenf=360
			}
			if (random==2){
				tipotween="rotationY";
				tweeni=180;
				tweenf=0;
			}
			select3.alpha=1;
			selectionn3.alpha=1;
			ventana3.visible=true;
			texto.text = "Multimedia";
			var giro:Tween=new Tween(ventana3, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween:Tween=new Tween(texto, "scaleX", Regular.easeOut, 0, 1, 0.5, true);
			var textoa:Tween=new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons3();
			showmultm();
			//stage.addEventListener(Event.ENTER_FRAME, v3);
		}
		
		function showmultm(){
			var p:Tween=new Tween(multm1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p1:Tween=new Tween(multm12, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p2:Tween=new Tween(multm2, "alpha", Regular.easeInOut, 0, 1, 3, true);
			var p3:Tween=new Tween(multm3, "alpha", Regular.easeInOut, 0, 1, 4, true);
			
			var rp:Tween=new Tween(multm1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp1:Tween=new Tween(multm12, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2:Tween=new Tween(multm2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3:Tween=new Tween(multm3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		function ft2() {
			practica1.addEventListener(MouseEvent.CLICK, fpractica1);
			practica2.addEventListener(MouseEvent.CLICK, fpractica2);
			practica3.addEventListener(MouseEvent.CLICK, fpractica3);
			practica5.addEventListener(MouseEvent.CLICK, fpractica5);
			practica52.addEventListener(MouseEvent.CLICK, fpractica52);
			practica6.addEventListener(MouseEvent.CLICK, fpractica6);
			practica8.addEventListener(MouseEvent.CLICK, fpractica8);
			practica9.addEventListener(MouseEvent.CLICK, fpractica9);
			practica11.addEventListener(MouseEvent.CLICK, fpractica11);
			juego1.addEventListener(MouseEvent.CLICK, fjuego1);
			juego2.addEventListener(MouseEvent.CLICK, fjuego2);
			juego3.addEventListener(MouseEvent.CLICK, fjuego3);
			multm1.addEventListener(MouseEvent.CLICK, fmultm1);
			multm12.addEventListener(MouseEvent.CLICK, fmultm12);
			multm2.addEventListener(MouseEvent.CLICK, fmultm2);
			btnmenu.addEventListener(MouseEvent.CLICK, fvolver);
		}


		function fpractica1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac1);
			swfm.x=150;
			swfm.y=20;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac2);
			swfm.x=150;
			swfm.y=20;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica3(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac3);
			swfm.x=150;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica5(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac5);
			swfm.x=165;
			swfm.y=40;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica52(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac52);
			swfm.x=175;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica6(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac6);
			swfm.x=170;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica8(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac8);
			swfm.x=150;
			swfm.y=20;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica9(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac9);
			swfm.x=110;
			swfm.y=20;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fpractica11(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac11);
			swfm.x=150;
			swfm.y=20;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		

		function fjuego1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego1);
			swfm.x=150;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fjuego2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego2);
			swfm.x=150;
			swfm.y=50;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fjuego3(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego3);
			swfm.x=20;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}


		function fmultm1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm1);
			swfm.x=80;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fmultm12(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm2);
			swfm.x=0;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		function fmultm2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm3);
			swfm.x=80;
			swfm.y=0;
			addChild(swfm);
			btnmenu.visible = true;
		}
		
		//pendiente
		/*function fmultm3(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm3);
			addChild(swfm);
			btnmenu.visible = true;
		}*/


		function fvolver(event: MouseEvent): void {
			removeChild(swfm);
			btnmenu.visible = false;
			fondo.visible = false;
		}

	}

}