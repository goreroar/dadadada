package Gui 
{
	import flash.display.MovieClip;
	import fl.controls.CheckBox;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleCheckBox extends Simple
	{
		public var anCheckBox:CheckBox = new CheckBox();
		public function SimpleCheckBox(xPos:int = 0, yPos:int = 0,txt:String=""):void
		{
			
		}
		
		override public function Init(data:Object):void
		{
			x = data.x;
			y = data.y;
			addChild(anCheckBox);
			anCheckBox.label = data.label;
			anCheckBox.selected = data.selected
		}
	}

}