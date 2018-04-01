package {
	import flash.display.MovieClip;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import flash.ui.Mouse;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.net.NetConnection;
	import flash.net.NetStream;
	import flash.media.Video;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextField;
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.events.NetStatusEvent;
	import flash.utils.Timer;

	public class Principal extends MovieClip {
		var v: simpleFlv = new simpleFlv();
		var pauser: int = 0;


		public function Principal() {
			var tween: Tween;
			tween = new Tween(universidad, "y", Regular.easeOut, -500, universidad.y, 3, true);
			tween = new Tween(hm, "x", Regular.easeOut, -500, hm.x, 3, true);
			tween = new Tween(practica, "x", Regular.easeOut, 1000, practica.x, 3, true);
			tween = new Tween(name1, "x", Regular.easeOut, -500, name1.x, 3, true);
			tween = new Tween(name2, "x", Regular.easeOut, 1000, name2.x, 3, true);
			tween = new Tween(iti, "y", Regular.easeOut, -500, iti.y, 3, true);
			tween = new Tween(profesor, "y", Regular.easeOut, 1000, profesor.y, 3, true);
			tween = new Tween(Inicio, "y", Regular.easeOut, 1000, Inicio.y, 4, true);
			Inicio.addEventListener(MouseEvent.CLICK, siguiente);
			function siguiente(e: MouseEvent): void {
				gotoAndStop(2);
				fotograma2();
			}

		}

		public function fotograma2() {
			vid1.addEventListener(MouseEvent.CLICK, video1);
			function video1(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 1.mp4");
				v.x = -20;
				v.y = 20;
				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid2.addEventListener(MouseEvent.CLICK, video2);
			function video2(e: MouseEvent): void {
				gotoAndStop(3);
				v.playMyFlv("Video 2.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid3.addEventListener(MouseEvent.CLICK, video3);
			function video3(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 3.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid4.addEventListener(MouseEvent.CLICK, video4);
			function video4(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 4.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid5.addEventListener(MouseEvent.CLICK, video5);
			function video5(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 5.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid6.addEventListener(MouseEvent.CLICK, video6);
			function video6(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 6.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid7.addEventListener(MouseEvent.CLICK, video7);
			function video7(e: MouseEvent): void {
				gotoAndStop(3);

				v.playMyFlv("Video 7.mp4");
				v.x = -20;
				v.y = 20;

				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid8.addEventListener(MouseEvent.CLICK, video8);
			function video8(e: MouseEvent): void {
				gotoAndStop(3);
				v.playMyFlv("Video 8.mp4");
				v.x = -20;
				v.y = 20;
				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid9.addEventListener(MouseEvent.CLICK, video9);
			function video9(e: MouseEvent): void {
				gotoAndStop(3);
				v.playMyFlv("Video 9.mp4");
				v.x = -20;
				v.y = 20;
				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
			vid10.addEventListener(MouseEvent.CLICK, video10);
			function video10(e: MouseEvent): void {
				v.playMyFlv("Video 10.mp4");
				v.x = -20;
				v.y = 20;
				gotoAndStop(3);
				addChild(v);
				cerrar.addEventListener(MouseEvent.CLICK, ext);
				pausebtn.addEventListener(MouseEvent.CLICK, pauserep);
			}
		}

		public function pauserep(ev: MouseEvent) {
			if (pauser == 0) {
				v._stream.pause();
				pauser = 1;
			} else
			if (pauser == 1) {
				v._stream.resume();
				pauser = 0;
			}
		}

		public function ext(e: MouseEvent): void {
			v._stream.pause();
			removeChild(v);
			gotoAndStop(2);
			v = new simpleFlv();
			fotograma2();
		}



	}

}