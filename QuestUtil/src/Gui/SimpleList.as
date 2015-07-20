package Gui 
{
	import flash.display.MovieClip;
	import fl.controls.List;
	/**
	 * ...
	 * @author weedtest
	 */
	public class SimpleList extends MovieClip
	{
		public var anList:List = new List();
		public function SimpleList(posX:int = 0, posY:int = 0):void
		{
			x = posX;
			y = posY;
			addChild(anList);
		}
		
		public function Add(params:Array):void
		{
			for (var i:int = 0; params.length > i; i++ )
			{
				if(params[i].label!=null && params[i].id!=null)
					anList.addItem(params[i]);
				else
				{
					params[i].label = anList.length;
					params[i].id = anList.length;
					anList.addItem(params[i]);
				}
			}
		}
		
		public function DeleteSelected():void
		{
			anList.removeItemAt(anList.selectedIndex);
		}
		
		public function ChangeData(data:Object):void
		{
			for(var item:* in data)
				anList.selectedItem[item] = data[item];
		}
		
		public function RetriveData():Object
		{
			return anList.selectedItem;
		}
	}

}