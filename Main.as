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
		//variable para introducir el video de conclusion
		var v: simpleFlv = new simpleFlv();
		//variables para definir un tween aleatorio al cambia de ventana
		var tipotween: String = "";
		var tweeni: int = 0;
		var tweenf: int = 0;
		var swfm: Loader = new Loader();
		//URLs de las practicas que se realizaron
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

		public function Main() {
			stop();
			//tweens de la portada
			INICIO.addEventListener(MouseEvent.CLICK, finicio);
			var tween1: Tween = new Tween(upv, "scaleX", Strong.easeInOut, 0, 1, 1, true);
			var tween2: Tween = new Tween(upv, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var tween3: Tween = new Tween(hm, "x", Strong.easeInOut, -1000, hm.x, 2, true);
			var tween4: Tween = new Tween(upvlogo, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var tween5: Tween = new Tween(alumno, "x", Strong.easeInOut, 1000, alumno.x, 2, true);
			var tween6: Tween = new Tween(grupo, "x", Strong.easeInOut, -1000, grupo.x, 2, true);
			var tween7: Tween = new Tween(profesor, "x", Strong.easeInOut, 1000, profesor.x, 2, true);
			var tween8: Tween = new Tween(titulo, "y", Strong.easeInOut, 1000, titulo.y, 2, true);
		}

		//funcion para ir al siguiente fotograma
		function finicio(event: MouseEvent): void {
			gotoAndStop(2);
			btnmenu.visible = false;
			fondo.visible = false;
			removebuttons();
			//listener para animacion y seleccion de las ventanas
			prac.addEventListener(MouseEvent.CLICK, fpracticas);
			vj.addEventListener(MouseEvent.CLICK, fvj);
			multm.addEventListener(MouseEvent.CLICK, fmultm);
			prac.addEventListener(MouseEvent.ROLL_OVER, s1);
			vj.addEventListener(MouseEvent.ROLL_OVER, s2);
			multm.addEventListener(MouseEvent.ROLL_OVER, s3);
			prac.addEventListener(MouseEvent.ROLL_OUT, s11);
			vj.addEventListener(MouseEvent.ROLL_OUT, s22);
			multm.addEventListener(MouseEvent.ROLL_OUT, s33);
			select1.alpha = 0;
			select2.alpha = 0;
			select3.alpha = 0;
			selectionn1.alpha = 0;
			selectionn2.alpha = 0;
			selectionn3.alpha = 0;
			ft2();
		}

		//funciones para animar las selecciones de ventanas
		function s1(event: Event): void {
			var selection: Tween = new Tween(select1, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2: Tween = new Tween(selectionn1, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move: Tween = new Tween(selectionn1, "x", Strong.easeInOut, selectionn1.x + 10, 22.45, 1, true);
			var iconmove: Tween = new Tween(icono1, "x", Strong.easeInOut, select1.x, 226, 0.5, true);
			var iconan: Tween = new Tween(icono1, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s2(event: Event): void {
			var selection: Tween = new Tween(select2, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2: Tween = new Tween(selectionn2, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move: Tween = new Tween(selectionn2, "x", Strong.easeInOut, selectionn2.x + 10, 22.45, 1, true);
			var iconmove: Tween = new Tween(icono2, "x", Strong.easeInOut, select2.x, 219, 0.5, true);
			var iconan: Tween = new Tween(icono2, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s3(event: Event): void {
			var selection: Tween = new Tween(select3, "alpha", Strong.easeInOut, 0, 100, 0.5, true);
			var selection2: Tween = new Tween(selectionn3, "alpha", Strong.easeInOut, 0, 100, 1, true);
			var selection2move: Tween = new Tween(selectionn3, "x", Strong.easeInOut, selectionn3.x + 10, 22.45, 1, true);
			var iconmove: Tween = new Tween(icono3, "x", Strong.easeInOut, select3.x, 219, 0.5, true);
			var iconan: Tween = new Tween(icono3, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}
		function s11(event: Event): void {
			var selection: Tween = new Tween(select1, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2: Tween = new Tween(selectionn1, "alpha", Strong.easeInOut, selectionn1.x, 0, 0.5, true);
			var iconan: Tween = new Tween(icono1, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}
		function s22(event: Event): void {
			var selection: Tween = new Tween(select2, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2: Tween = new Tween(selectionn2, "alpha", Strong.easeInOut, selectionn2.x, 0, 0.5, true);
			var iconan: Tween = new Tween(icono2, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}
		function s33(event: Event): void {
			var selection: Tween = new Tween(select3, "alpha", Strong.easeInOut, 100, 0, 0.5, true);
			var selection2: Tween = new Tween(selectionn3, "alpha", Strong.easeInOut, selectionn3.x, 0, 0.5, true);
			var iconan: Tween = new Tween(icono3, "alpha", Strong.easeInOut, 1, 0, 0.1, true);
		}

		//funcion que se llama para quitar los botones y poner otros nuevos
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
			selectionn1.alpha = 0;
			selectionn2.alpha = 0;
			selectionn3.alpha = 0;
			select1.alpha = 0;
			select2.alpha = 0;
			select3.alpha = 0;
			icono1.alpha = 0;
			icono2.alpha = 0;
			icono3.alpha = 0;
			concspa.visible = false;
			conceng.visible = false;
			prac1img.visible = false;
			descripcion.visible = false;
			play_btn.visible = false;
			pause_btn.visible = false;
			exit_btn.visible = false;
		}

		//funcion para hacer visibles los botones de las practicas
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

		//fucnion para hacer visibles los botones de los juegos
		function addbuttons2() {
			juego1.visible = true;
			juego2.visible = true;
			juego3.visible = true;
		}

		//funcion para hacer visibles los botones de multimedia
		function addbuttons3() {
			multm1.visible = true;
			multm12.visible = true;
			multm2.visible = true;
			multm3.visible = true;
		}

		//funcion para abrit la ventana de practicas
		function fpracticas(event: MouseEvent): void {
			removebuttons(); //se quitan los botones, en caso de haber.
			var random: int = Math.random() * 3; //se define un tween aleatorio
			if (random == 0) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 1) {
				tipotween = "rotationX";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 2) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 0;
			}
			select1.alpha = 1;
			selectionn1.alpha = 1;
			ventana1.visible = true;
			texto.text = "Practicas";
			var giro: Tween = new Tween(ventana1, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween: Tween = new Tween(texto, "scaleX", Regular.easeInOut, 0, 1, 0.5, true);
			var textoa: Tween = new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons1(); //se agregan los botones
			showprac(); //se muestran los botones con animacion
		}

		//funcion para mostrar los botnes de las practicas con animacion
		function showprac() {
			var p: Tween = new Tween(practica1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p2: Tween = new Tween(practica2, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p3: Tween = new Tween(practica3, "alpha", Regular.easeInOut, 0, 1, 3, true);
			var p5: Tween = new Tween(practica5, "alpha", Regular.easeInOut, 0, 1, 4, true);
			var p52: Tween = new Tween(practica52, "alpha", Regular.easeInOut, 0, 1, 5, true);
			var p6: Tween = new Tween(practica6, "alpha", Regular.easeInOut, 0, 1, 6, true);
			var p8: Tween = new Tween(practica8, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p9: Tween = new Tween(practica9, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p11: Tween = new Tween(practica11, "alpha", Regular.easeInOut, 0, 1, 2, true);

			var rp: Tween = new Tween(practica1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2: Tween = new Tween(practica2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3: Tween = new Tween(practica3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp5: Tween = new Tween(practica5, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp52: Tween = new Tween(practica52, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp6: Tween = new Tween(practica6, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp8: Tween = new Tween(practica8, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp9: Tween = new Tween(practica9, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp11: Tween = new Tween(practica11, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		//funcion para abrir la ventana de videojuegos
		function fvj(event: MouseEvent): void {
			removebuttons();
			var random: int = Math.random() * 3;
			if (random == 0) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 1) {
				tipotween = "rotationX";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 2) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 0;
			}
			select2.alpha = 1;
			selectionn2.alpha = 1;
			ventana2.visible = true;
			texto.text = "Videojuegos";
			var giro: Tween = new Tween(ventana2, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween: Tween = new Tween(texto, "scaleX", Regular.easeOut, 0, 1, 0.5, true);
			var textoa: Tween = new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons2();
			showvj();
		}

		//funcion para mostrar los botones de juegos con animacion
		function showvj() {
			var p: Tween = new Tween(juego1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p2: Tween = new Tween(juego2, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p3: Tween = new Tween(juego3, "alpha", Regular.easeInOut, 0, 1, 3, true);

			var rp: Tween = new Tween(juego1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2: Tween = new Tween(juego2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3: Tween = new Tween(juego3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		//funcion para mostrar la ventana de multimedia
		function fmultm(event: MouseEvent): void {
			removebuttons();
			var random: int = Math.random() * 3;
			if (random == 0) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 1) {
				tipotween = "rotationX";
				tweeni = 180;
				tweenf = 360
			}
			if (random == 2) {
				tipotween = "rotationY";
				tweeni = 180;
				tweenf = 0;
			}
			select3.alpha = 1;
			selectionn3.alpha = 1;
			ventana3.visible = true;
			texto.text = "Multimedia";
			var giro: Tween = new Tween(ventana3, tipotween, Regular.easeOut, tweeni, tweenf, 0.5, true);
			var scale2Tween: Tween = new Tween(texto, "scaleX", Regular.easeOut, 0, 1, 0.5, true);
			var textoa: Tween = new Tween(texto, "alpha", Regular.easeOut, 0, 1, 2, true);
			addbuttons3();
			showmultm();
		}

		//muestra los botones de multimedia con animacion.
		function showmultm() {
			var p: Tween = new Tween(multm1, "alpha", Regular.easeInOut, 0, 1, 1, true);
			var p1: Tween = new Tween(multm12, "alpha", Regular.easeInOut, 0, 1, 2, true);
			var p2: Tween = new Tween(multm2, "alpha", Regular.easeInOut, 0, 1, 3, true);
			var p3: Tween = new Tween(multm3, "alpha", Regular.easeInOut, 0, 1, 4, true);

			var rp: Tween = new Tween(multm1, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp1: Tween = new Tween(multm12, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp2: Tween = new Tween(multm2, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
			var rp3: Tween = new Tween(multm3, tipotween, Regular.easeInOut, tweeni, tweenf, 0.5, true);
		}

		//funcion que activa todos los listener del fotograma 2
		function ft2() {
			practica1.addEventListener(MouseEvent.CLICK, fpractica1);
			practica1.addEventListener(MouseEvent.ROLL_OVER, showp1);
			practica1.addEventListener(MouseEvent.ROLL_OUT, hidep1);

			practica2.addEventListener(MouseEvent.CLICK, fpractica2);
			practica2.addEventListener(MouseEvent.ROLL_OVER, showp2);
			practica2.addEventListener(MouseEvent.ROLL_OUT, hidep2);

			practica3.addEventListener(MouseEvent.CLICK, fpractica3);
			practica3.addEventListener(MouseEvent.ROLL_OVER, showp3);
			practica3.addEventListener(MouseEvent.ROLL_OUT, hidep3);

			practica5.addEventListener(MouseEvent.CLICK, fpractica5);
			practica5.addEventListener(MouseEvent.ROLL_OVER, showp5);
			practica5.addEventListener(MouseEvent.ROLL_OUT, hidep5);

			practica52.addEventListener(MouseEvent.CLICK, fpractica52);
			practica52.addEventListener(MouseEvent.ROLL_OVER, showp52);
			practica52.addEventListener(MouseEvent.ROLL_OUT, hidep52);

			practica6.addEventListener(MouseEvent.CLICK, fpractica6);
			practica6.addEventListener(MouseEvent.ROLL_OVER, showp6);
			practica6.addEventListener(MouseEvent.ROLL_OUT, hidep6);

			practica8.addEventListener(MouseEvent.CLICK, fpractica8);
			practica8.addEventListener(MouseEvent.ROLL_OVER, showp8);
			practica8.addEventListener(MouseEvent.ROLL_OUT, hidep8);

			practica9.addEventListener(MouseEvent.CLICK, fpractica9);
			practica9.addEventListener(MouseEvent.ROLL_OVER, showp9);
			practica9.addEventListener(MouseEvent.ROLL_OUT, hidep9);

			practica11.addEventListener(MouseEvent.CLICK, fpractica11);
			practica11.addEventListener(MouseEvent.ROLL_OVER, showp11);
			practica11.addEventListener(MouseEvent.ROLL_OUT, hidep11);

			juego1.addEventListener(MouseEvent.CLICK, fjuego1);
			juego1.addEventListener(MouseEvent.ROLL_OVER, showj1);
			juego1.addEventListener(MouseEvent.ROLL_OUT, hidej1);

			juego2.addEventListener(MouseEvent.CLICK, fjuego2);
			juego2.addEventListener(MouseEvent.ROLL_OVER, showj2);
			juego2.addEventListener(MouseEvent.ROLL_OUT, hidej2);

			juego3.addEventListener(MouseEvent.CLICK, fjuego3);
			juego3.addEventListener(MouseEvent.ROLL_OVER, showj3);
			juego3.addEventListener(MouseEvent.ROLL_OUT, hidej3);

			multm1.addEventListener(MouseEvent.CLICK, fmultm1);
			multm1.addEventListener(MouseEvent.ROLL_OVER, showm1);
			multm1.addEventListener(MouseEvent.ROLL_OUT, hidem1);

			multm12.addEventListener(MouseEvent.CLICK, fmultm12);
			multm12.addEventListener(MouseEvent.ROLL_OVER, showm12);
			multm12.addEventListener(MouseEvent.ROLL_OUT, hidem12);

			multm2.addEventListener(MouseEvent.CLICK, fmultm2);
			multm2.addEventListener(MouseEvent.ROLL_OVER, showm2);
			multm2.addEventListener(MouseEvent.ROLL_OUT, hidem2);

			multm3.addEventListener(MouseEvent.CLICK, fmultm3);

			concspa.addEventListener(MouseEvent.CLICK, fconc1);
			concspa.addEventListener(MouseEvent.ROLL_OVER, showconc1);
			concspa.addEventListener(MouseEvent.ROLL_OUT, hideconc1);

			conceng.addEventListener(MouseEvent.CLICK, fconc2);
			conceng.addEventListener(MouseEvent.ROLL_OVER, showconc2);
			conceng.addEventListener(MouseEvent.ROLL_OUT, hideconc2);

			btnmenu.addEventListener(MouseEvent.CLICK, fvolver);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 1
		function showp1(event: MouseEvent): void {
			prac1img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 1:\n Se ingresa los datos de una persona para posteriormente mostrarlo en la salida con trace."
			var pract: Tween = new Tween(prac1img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac1img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 1
		function hidep1(event: MouseEvent): void {
			var pract: Tween = new Tween(prac1img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac1img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 2
		function showp2(event: MouseEvent): void {
			prac2img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 2:\nSe tienen 3 fotogramas de diferentes funciones, 1 Portada, 2 Calcular el area de un triangulo y 3 Calcular si un numero es par o impar."
			var pract: Tween = new Tween(prac2img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac2img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 2
		function hidep2(event: MouseEvent): void {
			var pract: Tween = new Tween(prac2img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac2img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 3
		function showp3(event: MouseEvent): void {
			prac3img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 3:\nSe registran calificaciones de un alumno y al final se imprime los resultados."
			var pract: Tween = new Tween(prac3img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac3img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 3
		function hidep3(event: MouseEvent): void {
			var pract: Tween = new Tween(prac3img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac3img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 5
		function showp5(event: MouseEvent): void {
			prac5img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 5:\nCalcular grados celcius a Fahrenheit y viceversa."
			var pract: Tween = new Tween(prac5img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac5img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 5
		function hidep5(event: MouseEvent): void {
			var pract: Tween = new Tween(prac5img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac5img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 5 2
		function showp52(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Practica 5 - 2:\nCalcular un numero entero arabigo a numero romano."
			var pract: Tween = new Tween(prac52img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac52img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 2
		function hidep52(event: MouseEvent): void {
			var pract: Tween = new Tween(prac52img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac52img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 6
		function showp6(event: MouseEvent): void {
			prac6img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 6:\nCalcular la nomina de un numero de empleados y el desarrollo de una calculadora."
			var pract: Tween = new Tween(prac6img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac6img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 6
		function hidep6(event: MouseEvent): void {
			var pract: Tween = new Tween(prac6img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac6img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 8
		function showp8(event: MouseEvent): void {
			prac8img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 8:\nCalcular el area de un circulo o un triangulo usando clases."
			var pract: Tween = new Tween(prac8img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac8img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 8
		function hidep8(event: MouseEvent): void {
			var pract: Tween = new Tween(prac8img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac8img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 9
		function showp9(event: MouseEvent): void {
			prac9img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 9:\Realizacion de 2 ejercicios utilizando clases."
			var pract: Tween = new Tween(prac9img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac9img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 9
		function hidep9(event: MouseEvent): void {
			var pract: Tween = new Tween(prac9img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac9img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de practica 11
		function showp11(event: MouseEvent): void {
			prac11img.visible = true;
			descripcion.visible = true;
			descripcion.text = "Practica 11:\nRealizar una determinada operacion en base al numero que se ingresa."
			var pract: Tween = new Tween(prac11img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(prac11img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la practica 11
		function hidep11(event: MouseEvent): void {
			var pract: Tween = new Tween(prac11img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(prac11img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion del juego 1
		function showj1(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Practica 4 Juego 1:\nJuego de caida de objetos y colisiones."
			var pract: Tween = new Tween(juego1img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(juego1img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion del juego 1
		function hidej1(event: MouseEvent): void {
			var pract: Tween = new Tween(juego1img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(juego1img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion del juego 2
		function showj2(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Proyecto U1 - 2:\nJuego de Memorama."
			var pract: Tween = new Tween(juego2img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(juego2img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion del juego 2
		function hidej2(event: MouseEvent): void {
			var pract: Tween = new Tween(juego2img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(juego2img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion del juego 1
		function showj3(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Proyecto Sepientes y escalera:\nJuego de Serpientes y escalera, maximo 3 jugadores y 2 minimo."
			var pract: Tween = new Tween(juego3img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(juego3img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion del juego 3
		function hidej3(event: MouseEvent): void {
			var pract: Tween = new Tween(juego3img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(juego3img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de la galeria 1
		function showm1(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Galeria de Imagenes Practica 7:\nMuestra una galeria de imagenes con XML y utilizando tweens."
			var pract: Tween = new Tween(multm1img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(multm1img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la galeria 1
		function hidem1(event: MouseEvent): void {
			var pract: Tween = new Tween(multm1img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(multm1img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de la galeria 1 2
		function showm12(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Galeria de Imgaenes 2:\nGaleria de imagenes mejorada con opcion de pantalla completa.";
			var pract: Tween = new Tween(multm12img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(multm12img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la galeria 1 2
		function hidem12(event: MouseEvent): void {
			var pract: Tween = new Tween(multm12img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(multm12img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar animacion de imagen y descripcion de la galeria 2
		function showm2(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Galeria de Videos Practica 10:\nGaleria de Videos con procedimiento para realizar el juego de Serpientes y escaleras."
			var pract: Tween = new Tween(multm2img, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphap: Tween = new Tween(multm2img, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar las imagenes y descripcion de la galeria 2
		function hidem2(event: MouseEvent): void {
			var pract: Tween = new Tween(multm2img, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphap: Tween = new Tween(multm2img, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar descripcion de la conclusion en español
		function showconc1(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Conclusion en Español."
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar la descripcion de la conclusion en español
		function hideconc1(event: MouseEvent): void {
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//funcion para mostrar descripcion de la conclusion en ingles
		function showconc2(event: MouseEvent): void {
			descripcion.visible = true;
			descripcion.text = "Conclusion en Ingles."
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 600, 660, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 0, 1, 0.5, true);
		}

		//funcion para ocultar la descripcion de la conclusion en ingles
		function hideconc2(event: MouseEvent): void {
			var textop: Tween = new Tween(descripcion, "x", Strong.easeInOut, 660, 600, 0.5, true);
			var alphat: Tween = new Tween(descripcion, "alpha", Strong.easeInOut, 1, 0, 0.5, true);
		}

		//Funciones para inciar practicas
		//Practica 1
		function fpractica1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac1);
			swfm.x = 150;
			swfm.y = 20;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 2
		function fpractica2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac2);
			swfm.x = 150;
			swfm.y = 20;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 3
		function fpractica3(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac3);
			swfm.x = 150;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 5
		function fpractica5(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac5);
			swfm.x = 165;
			swfm.y = 40;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 5 2
		function fpractica52(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac52);
			swfm.x = 175;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 6
		function fpractica6(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac6);
			swfm.x = 170;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 8
		function fpractica8(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac8);
			swfm.x = 150;
			swfm.y = 20;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 9
		function fpractica9(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac9);
			swfm.x = 110;
			swfm.y = 20;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Practica 11
		function fpractica11(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rprac11);
			swfm.x = 150;
			swfm.y = 20;
			addChild(swfm);
			btnmenu.visible = true;
		}


//funciones para inciar juegos
		//Juego 1
		function fjuego1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego1);
			swfm.x = 150;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Juego 2
		function fjuego2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego2);
			swfm.x = 150;
			swfm.y = 50;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Juego 3
		function fjuego3(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rjuego3);
			swfm.x = 20;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}


		//Funciones para inciar Multimedia}
		//Multimedia 1
		function fmultm1(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm1);
			swfm.x = 80;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Multimedia 1 2
		function fmultm12(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm2);
			swfm.x = 0;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}

		//Multimedia 2
		function fmultm2(event: MouseEvent): void {
			fondo.visible = true;
			swfm.load(rmultm3);
			swfm.x = 80;
			swfm.y = 0;
			addChild(swfm);
			btnmenu.visible = true;
		}


		//Multimedia 3
		function fmultm3(event: MouseEvent): void {
			concspa.visible = true;
			conceng.visible = true;
			var conc1: Tween = new Tween(concspa, "y", Strong.easeInOut, multm3.y, 342.45, 1, true);
			var alphaconc1: Tween = new Tween(concspa, "alpha", Strong.easeInOut, 0, 1, 1, true);
			var conc2: Tween = new Tween(conceng, "y", Strong.easeInOut, 342.45, 391.45, 2, true);
			var alphaconc2: Tween = new Tween(conceng, "alpha", Strong.easeInOut, 0, 1, 2, true);
		}


		//funcion para volver al menu
		function fvolver(event: MouseEvent): void {
			removeChild(swfm);
			btnmenu.visible = false;
			fondo.visible = false;
		}



//funcion para inicar el video de conclusion en español
		function fconc1(e: MouseEvent): void {
			fondo.visible = true;
			exit_btn.visible = true;
			pause_btn.visible = true;
			v.playMyFlv("Conclusion1.mp4");
			v.x = 60;
			v.y = 10;
			addChild(v);
			exit_btn.addEventListener(MouseEvent.CLICK, ext);
			pause_btn.addEventListener(MouseEvent.CLICK, pauserep);
			play_btn.addEventListener(MouseEvent.CLICK, playrep);
		}

		//funcion para inicar el video de conclusion en ingles
		function fconc2(e: MouseEvent): void {
			fondo.visible = true;
			exit_btn.visible = true;
			pause_btn.visible = true;
			v.playMyFlv("Conclusion2.mp4");
			v.x = 60;
			v.y = 10;
			addChild(v);
			exit_btn.addEventListener(MouseEvent.CLICK, ext);
			pause_btn.addEventListener(MouseEvent.CLICK, pauserep);
			play_btn.addEventListener(MouseEvent.CLICK, playrep);
		}

		//funcion para pausar video
		public function pauserep(ev: MouseEvent) {
			v._stream.pause();
			play_btn.visible = true;
			pause_btn.visible = false;
		}

		//funcion para reproducir video
		public function playrep(ev: MouseEvent) {
			v._stream.resume();
			pause_btn.visible = true;
			play_btn.visible = false;
		}

		//funcion para salir del video
		public function ext(e: MouseEvent): void {
			v._stream.pause();
			removeChild(v);
			v = new simpleFlv();
			fondo.visible = false;
			play_btn.visible = false;
			pause_btn.visible = false;
			exit_btn.visible = false;
		}

	}

}