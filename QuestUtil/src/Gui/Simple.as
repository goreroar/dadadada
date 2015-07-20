package Gui 
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	/**
	 * ...
	 * @author weedtest
	 */
	public class Simple extends MovieClip
	{
		public var tf:TextField = new TextField();
		public function Simple() 
		{
			
		}
		
		public function Init(data:Object):void
		{
			x = data.x;
			y = data.y;
			addChild(tf);
			tf.text = data.label;
		}
		
		public function ClearData():void
		{
			
		}
		
		public function ChangeLabel(label:String = ""):void
		{
			tf.text = label;
		}
		
		public function LoadData(data:Object):void
		{
			
		}
		public function Retrive():Object
		{
			return {};
		}
		
		public function Die():void
		{
			removeChild(tf);
		}
		
	}

}