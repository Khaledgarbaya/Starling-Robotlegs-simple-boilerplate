package com.app.models
{
	import org.robotlegs.mvcs.Actor;
	import com.app.events.ExampleEvent;
	
	public class SimpleModel extends Actor
	{
		protected var _message:String;
		
		public function SimpleModel()
		{
			_message = "Default Model Message";
		}
		
		public function requestEvent():void
		{
			var exampleEvent:ExampleEvent = new ExampleEvent(ExampleEvent.HELLO);
			exampleEvent.message = _message;
			dispatch(exampleEvent);
		}
		
		public function set message(message:String):void
		{
			_message = message;
			trace("SimpleModel.message(); '" + _message + "'");
		}
	}
}