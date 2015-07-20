package Gui 
{
	import fl.controls.ComboBox;
	import flash.display.MovieClip;
	import flash.text.TextField;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleComboBox extends Simple
	{
		public var anComboBox:ComboBox = new ComboBox();
		public function SimpleComboBox():void
		{
			
			
		}
		
		override public function Init(data:Object):void
		{
			x = data.x;
			y = data.y;
			addChild(super.tf);
			super.tf.text = data.label;
			addChild(anComboBox);
			anComboBox.y = 20;
		}
		
		override public function Retrive():Object
		{
			return({data:anComboBox.selectedIndex});
		}
		
		override public function Die():void
		{
			removeChild(super.tf);
			removeChild(anComboBox);
		}
		
		override public function LoadData(data:Object):void
		{
			for (var i:int = 0; i < data.length; i++)
				anComboBox.addItem(data[i]);
		}
		
	}

}