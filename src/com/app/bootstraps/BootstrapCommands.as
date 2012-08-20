package com.app.bootstraps
{
	import com.app.commands.EventCommand;
	import com.app.events.ExampleEvent;
	
	import org.robotlegs.core.ICommandMap;

	public class BootstrapCommands
	{
		public function BootstrapCommands(commandMap:ICommandMap)
		{
			commandMap.mapEvent(ExampleEvent.GOODBYE, EventCommand);
		}
	}
}