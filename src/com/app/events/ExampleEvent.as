package com.app.events
{
	import flash.events.Event;
	
	public class ExampleEvent extends Event
	{
		public static const HELLO:String = "hello";
		public static const GOODBYE:String = "goodbye";
		
		protected var _message:String;
		
		public function ExampleEvent(type:String, message:String = "")
		{
			super(type);
			_message = message;
			trace("ExampleEvent()");
		}
		
		public function get message():String
		{
			return _message;
		}
		
		public function set message(message:String):void
		{
			_message = message;
		}
	}
}