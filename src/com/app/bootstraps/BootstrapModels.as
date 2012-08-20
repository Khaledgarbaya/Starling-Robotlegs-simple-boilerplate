package com.app.bootstraps
{
	import com.app.models.SimpleModel;
	
	import org.robotlegs.core.IInjector;

	public class BootstrapModels
	{
		public function BootstrapModels(injector:IInjector)
		{
			injector.mapSingleton(SimpleModel);
		}
	}
}