package Gui 
{
	import flash.display.MovieClip;
	import flash.events.Event;
	import Types.Constanta;
	/**
	 * ...
	 * @author weedtest
	 */
	public class TileList extends Simple
	{
		private var comboWidth:int = 250;
		private var list:Array = [];
		private var typeUnit:SimpleComboBox = new SimpleComboBox();
		private var tempData:Object;
		private var type:String;
		public function TileList() 
		{
			
		}
		
		override public function Init(data:Object):void
		{
			x = data.x;
			y = data.y;
			type = data.type;
			addChild(super.tf);
			super.tf.text = data.label;
			typeUnit.Init( { x:0, y:0, label:data.type } );
			typeUnit.anComboBox.width = comboWidth;
			addChild(typeUnit);
			typeUnit.y = 20;
			for (var i:int = 0; i < Constanta.listOfTypes.length; i++)
				typeUnit.anComboBox.addItem(Constanta.listOfTypes[i]);
			typeUnit.anComboBox.addEventListener(Event.CHANGE, ChangeListener);
			changeType(type);
		}
		
		public function Create(data:Object):void
		{
			for (var i:int = 0; i < data.data.length; i++)
				AddTiles(data.i,i)
		}
		
		public function AddTiles(params:Object,index:int=0):void
		{
			if (params!=null)
			{
				var anElement:Simple
				addChild(anElement);
				list.push(anElement);
			}
		}
		
		/*
		public function RemoveTile(id:int):void
		{
			if (id < 0 || list.length < id)
				return;
			/*removeChild(list[i]);
			list = list.splice(id,1);
		}*/
		
		private function ChangeListener(e:Event):void
		{
			UpdateTiles();
		}
		
		public function ChangeTempData(data:Object):void
		{
			tempData = data;
			UpdateTiles();
		}
		
		private function UpdateTiles():void
		{
			if (tempData == null)
				return;
			
			var i:int;
			if (list.length > 0)
			for (i = list.length-1; i > -1; i-- )
			{
				list[i].Die();
				list.splice(i, 1);
			}
			
			
			if (tempData.type != null)
			{
				typeUnit.anComboBox.selectedItem;
			}
			
			i = 1;
			
			while (typeUnit.anComboBox.selectedItem[i]!=null)
			{
				var element:Simple;
				var lbl:String;
				if (typeUnit.anComboBox.selectedItem[i] is Array)
				{
					element = new SimpleComboBox();
					lbl = "";
					//element.anComboBox.width = comboWidth;
				}
				
				if (typeUnit.anComboBox.selectedItem[i] is String)
				{
					element = new SimpleInputText();
					lbl = typeUnit.anComboBox.selectedItem[i];
				}
				addChild(element);
				//
				if(typeUnit.anComboBox.selectedItem[i] is Array)
					element.LoadData(typeUnit.anComboBox.selectedItem[i]);
				
				if (tempData[i] != null) {
					element.Init( tempData[i]);
				}else{
					element.Init( { x:0, y:(i * 40 + 25), label: lbl } );
				}
				
				list.push(element);
				i++;
			}
		}
		
		private function changeType(type:String):void
		{
			var i:int;
			if (typeUnit.anComboBox.length > 0)
				typeUnit.anComboBox.removeAll();
			switch(type) {
				case "task":
				for (i = 0; i < Constanta.listOfTypes.length; i++)
					typeUnit.anComboBox.addItem(Constanta.listOfTypes[i]);
				break
				case "reward":
				for (i = 0; i < Constanta.listOfReward.length; i++)
					typeUnit.anComboBox.addItem(Constanta.listOfReward[i]);
				break;
				case "reuired":
				for (i = 0; i < Constanta.listOfReward.length; i++)
					typeUnit.anComboBox.addItem(Constanta.listOfReward[i]);
				break;
			}
		}
		
		public function Update():void
		{
			for (var i:int = 0; i < list.length; i++ )
			{
				if(list[i] is SimpleComboBox)
					tempData[i] = tempData[i].Retrive().data;
				if(list[i] is SimpleInputText)
					tempData[i] = tempData[i].Retrive().data;
			}
		}
	}

}