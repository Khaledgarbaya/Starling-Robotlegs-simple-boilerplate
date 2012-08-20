package com.app.views
{
	import org.robotlegs.mvcs.StarlingMediator;
	import com.app.events.ExampleEvent;
	
	public class SecondViewMediator extends StarlingMediator
	{
		public function SecondViewMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			trace("SecondViewMediator.onRegister()");
		}
		
		override public function onRemove():void
		{
			trace("SecondViewMediator.onRemove()");
			dispatch(new ExampleEvent( ExampleEvent.GOODBYE, "Goodbye from second view" ) );
		}
	}
}