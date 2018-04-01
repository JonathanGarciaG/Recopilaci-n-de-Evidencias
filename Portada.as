package  {
	
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	
	public class Portada extends MovieClip {
		
		
		public function Portada() {
			//instancias para llamar los tweens en la portada
			var upv_mcc:Tween  = new Tween(upv_mc,"y",Bounce.easeOut,-100,upv_mc.y,4,true);
			var upv_mcc2:Tween  = new Tween(upvlogo_mc,"y",Bounce.easeOut,-100,upvlogo_mc.y,4,true);
			var nombre_mcc:Tween = new Tween(nombre_mc,"x",None.easeOut,-300,nombre_mc.x,3,true);
			var nombrep_mcc:Tween = new Tween(profe_mc,"x",None.easeOut,800,profe_mc.x,3,true);
			var pra_mcc:Tween = new Tween(pra_mc,"x",None.easeOut,550,pra_mc.x,3,true);
			var hm_mcc:Tween = new Tween(hm_mc,"x",None.easeOut,-300,hm_mc.x,3,true);
			var play_mcc:Tween  = new Tween(play_mc,"y",Regular.easeInOut,410,play_mc.y,3,true);
			var iti_mcc:Tween  = new Tween(iti_mc,"y",Bounce.easeInOut,800,iti_mc.y,3,true);
		}
	}
	
}
