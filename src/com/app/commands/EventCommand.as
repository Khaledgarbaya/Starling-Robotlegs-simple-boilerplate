package com.app.commands
{
	import org.robotlegs.mvcs.StarlingCommand;
	import com.app.models.SimpleModel;
	import com.app.events.ExampleEvent;
	
	public class EventCommand extends StarlingCommand
	{
		[Inject]
		public var simpleModel:SimpleModel;
		
		[Inject]
		public var exampleEvent:ExampleEvent;
		
		public function EventCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			trace("EventCommand.execute()");
			
			var newMessage:String = exampleEvent.message;
			simpleModel.message = newMessage;
			simpleModel.requestEvent();
		}
	}
}