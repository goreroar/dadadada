package Gui 
{
	import flash.display.MovieClip;
	import fl.controls.Button;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleButton extends Simple
	{
		public var anButton:Button = new Button();
		public function SimpleButton():void
		{
			
		}
		
		override public function Init(data:Object):void
		{
			anButton.label = data.label;
			x = data.x;
			y = data.y;
			addChild(anButton);
			
		}
		
		public function changeLabel(name:String = ""):void
		{
			anButton.label = name;
		}
	}

}