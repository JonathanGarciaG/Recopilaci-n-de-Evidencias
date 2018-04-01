package  {
	import flash.display.MovieClip;
	public class Codigo extends MovieClip {
		// se crean dos variables para almacenar las areas
			private var areaCirculo:Number;
			private var areaTriangulo:Number;
			
		public function AreaCirculo (val:Number) {
			//se recibe un dato por parametro y despues se multiplica por PI para calcular el area
			var radio:Number = val;
			areaCirculo = 3.1416 * (radio * radio);
			
		}
		public function Circulo(): String{
			return areaCirculo.toString();
			
		}
		public function AreaTriangulo (b:Number, h:Number) {
			//se reciben los parametros b y h y se almacenan en las variables base y altura
			var base:Number = b;
			var altura:Number = h;
			//se realiza la formula para sacar el area del triangulo
			areaTriangulo = (base * altura)/2;
			
		}
		public function Triangulo(): String{
			return areaTriangulo.toString();
			
		}

	}
	
}
