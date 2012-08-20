package com.app.context
{
	import com.app.bootstraps.BootstrapCommands;
	import com.app.bootstraps.BootstrapModels;
	import com.app.bootstraps.BootstrapViewMediators;
	
	import org.robotlegs.mvcs.StarlingContext;
	
	import starling.display.DisplayObjectContainer;
	
	public class MyStarlingGameContext extends StarlingContext
	{
		public function MyStarlingGameContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			new BootstrapViewMediators(mediatorMap);
			new BootstrapModels(injector);
			new BootstrapCommands(commandMap);
			
			super.startup();
		}
	}
}