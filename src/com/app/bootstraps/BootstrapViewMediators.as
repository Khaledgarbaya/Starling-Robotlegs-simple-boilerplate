package com.app.bootstraps
{
	import com.app.views.MyGame;
	import com.app.views.MyGameMediator;
	import com.app.views.SecondView;
	import com.app.views.SecondViewMediator;
	
	import org.robotlegs.core.IStarlingMediatorMap;

	public class BootstrapViewMediators
	{
		public function BootstrapViewMediators(mediatorMap:IStarlingMediatorMap)
		{
			mediatorMap.mapView(MyGame, MyGameMediator);
			mediatorMap.mapView(SecondView, SecondViewMediator);
		}
	}
}