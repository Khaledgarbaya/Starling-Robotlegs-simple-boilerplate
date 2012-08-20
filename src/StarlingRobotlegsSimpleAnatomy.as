package
{
	import com.app.views.MyGame;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import org.robotlegs.mvcs.StarlingContext;
	
	import starling.core.Starling;
	
	public class StarlingRobotlegsSimpleAnatomy extends Sprite
	{
		private var _starling:Starling;
		private var _starlingContext:StarlingContext;
		
		public function StarlingRobotlegsSimpleAnatomy()
		{
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		protected function onAddedToStage(event:Event):void
		{
			_starling = new Starling(MyGame, stage);
			_starling.start();
		}
	}
}