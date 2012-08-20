package com.app.views
{
	import org.robotlegs.mvcs.StarlingMediator;
	
	public class MyGameMediator extends StarlingMediator
	{
		public function MyGameMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			trace("MyGameMediator.onRegister()");
		}
		
		override public function onRemove():void
		{
			trace("MyGameMediator.onRemove()");
		}
	}
}