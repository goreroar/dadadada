package Gui 
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleTxt extends MovieClip
	{
		public var anText:TextField = new TextField();
		public function SimpleTxt(xPos:int = 0,yPos:int=0,txt:String="", label:String="" ) 
		{
			x = xPos;
			y = yPos;
			addChild(anText);
			anText.text = txt;
		}
		
	}

}