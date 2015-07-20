package Gui 
{
	import fl.controls.TextInput;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleInputText extends Simple
	{
		public var anInputText:TextInput = new TextInput();
		public function SimpleInputText():void 
		{
			
		}
		
		override public function Init(data:Object):void
		{
			x = data.x;
			y = data.y;
			addChild(super.tf);
			super.tf.text = data.label;
			addChild(anInputText);
			anInputText.y = 20;
			anInputText.text = data.txt? data.txt :"";
		}
		
		override public function Retrive():Object
		{
			return { data:anInputText.text };
		}
		
		public function RetriveText():String
		{
			return anInputText.text;
		}
		
		public function SetText(txt:String):void
		{
			anInputText.text = txt!=null?txt:"";
		}
		
		override public function Die():void
		{
			removeChild(super.tf);
			removeChild(anInputText);
		}
	}

}