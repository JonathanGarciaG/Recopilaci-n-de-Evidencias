package {
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
	
	public class simpleFlv extends Sprite{
		var _video:Video;
		var _stream:NetStream;
		var _playbackTime:TextField;
		var _duration:uint;
		var _timer:Timer;
		
		public function simpleFlv(){
			_duration = 0;
				
			_playbackTime = new TextField ();
			_playbackTime.autoSize = TextFieldAutoSize.CENTER;
			_playbackTime.y=425;
			_playbackTime.x=202.8;
			_playbackTime.text = "Buffering _";
				
			_timer = new Timer (1000);
			_timer.addEventListener (TimerEvent.TIMER, onTimer);
			_timer.start();
		}
			
		public function playMyFlv (flvUrl){
			
			_video = new Video();
				
			var connection:NetConnection = new NetConnection();
			connection.connect(null);
				
			_stream = new NetStream(connection);
			_stream.play(flvUrl);
				
			var Client:Object = new Object();
			Client.onMetaData = onMetaData;
			_stream.client = Client;
			_video.attachNetStream(_stream);
				
			_stream.addEventListener(NetStatusEvent.NET_STATUS, onNetStatus);
				
			addChild(_video);
			addChild(_playbackTime);
		}
		
			
		private function onMetaData (data:Object){
			_duration = data.duration;
		}
			
		private function onNetStatus(e:NetStatusEvent){
			_video.width = 750;   //_video.videoWidth;
			_video.height = 420; //_video.videoHeight;
		}
			
		private function onTimer(t:TimerEvent){
			if( _duration > 0 && _stream.time > 0){
			_playbackTime.text = Math.round(_stream.time) + " / " + Math.round(_duration);
			}
		}
			
	}

}