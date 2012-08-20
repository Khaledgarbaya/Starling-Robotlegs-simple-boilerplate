package com.app.views
{
	import flash.utils.setTimeout;
	
	import org.robotlegs.mvcs.StarlingContext;
	
	import starling.display.Sprite;
	import starling.events.Event;
	import com.app.context.MyStarlingGameContext;
	
	public class MyGame extends Sprite
	{
		private var _starlingContext:StarlingContext;
		
		public function MyGame()
		{
			super();
			
			_starlingContext = new MyStarlingGameContext(this);
			
			addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			var secondView:SecondView = new SecondView();
			addChild(secondView);
			
			// Test mediator removal
			setTimeout(secondView.parent.removeChild, 3000, secondView);
		}
	}
}