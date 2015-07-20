package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import Gui.SimpleButton;
	import Gui.SimpleCheckBox;
	import Gui.SimpleInputText;
	import Gui.SimpleList;
	import Gui.SimpleTxt;
	import Gui.TileList;
	
	/**
	 * ...
	 * @author weedtest
	 */
	public class Main extends Sprite 
	{
		private var list:SimpleList;
		private var idbutton:SimpleInputText = new SimpleInputText();
		private var hintbutton:SimpleInputText = new SimpleInputText();
		private var textbutton:SimpleInputText = new SimpleInputText();
		private var namebutton:SimpleInputText = new SimpleInputText();
		private var winbutton:SimpleInputText = new SimpleInputText();
		private var avatarbutton:SimpleInputText = new SimpleInputText();
		private var levelbutton:SimpleInputText = new SimpleInputText();
		private var addButton:SimpleButton = new SimpleButton();
		private var deleteButton:SimpleButton = new SimpleButton();
		private var updateButton:SimpleButton = new SimpleButton();
		private var uploadButton:SimpleButton = new SimpleButton();
		private var idCheck:SimpleCheckBox = new SimpleCheckBox();
		private var taskList:TileList = new TileList();
		private var rewardList:TileList = new TileList();
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			//list
			list = new SimpleList(10,10);
			addChild(list);
			list.anList.width = 400;
			list.anList.height = stage.stageHeight-85;
			//id
			idbutton.Init({x:450, y:10, txt:"",label:"Id"})
			addChild(idbutton);
			//checkbox
			addChild(idCheck);
			idCheck.Init( { x:700, y:30, label:"same ids", selected:false } );
			//name
			namebutton.Init( { x:450, y:55, txt:"", label:"name text" } );
			addChild(namebutton);
			//text
			addChild(textbutton);
			textbutton.Init({x:700, y:55,txt:"",label:"desc text"})
			//win
			addChild(winbutton);
			winbutton.Init({x:450, y:100, txt:"", label:"win text"});
			//hint
			addChild(hintbutton);
			hintbutton.Init( {x:700, y:100,txt:"",label:"hint text"} );
			//avatar
			addChild(avatarbutton);
			avatarbutton.Init({x:450, y:145,txt:"",label:"avatar"})
			//access level
			addChild(levelbutton);
			levelbutton.Init({x:700, y:145,txt:"",label:"access level"})
			/*task
			var tasktxt:SimpleTxt = new SimpleTxt(475, 190, "task");
			addChild(tasktxt);
			//reward
			var rewardtxt:SimpleTxt = new SimpleTxt(700, 190,"reward");
			addChild(rewardtxt);*/
			
			//list
			addChild(taskList);
			taskList.Init( { x:450, y:190, label:"task",type:"task" } );
			addChild(rewardList);
			rewardList.Init( { x:700, y:190, label:"reward", type:"reward" } );
			
			//buttons
			addChild(addButton);
			addButton.Init( { x:20, y:550, label:"Add" } );
			addChild(deleteButton);
			deleteButton.Init( { x:(addButton.x+addButton.width+20), y:550, label:"Delete" } );
			addChild(updateButton);
			updateButton.Init( { x:(deleteButton.x+deleteButton.width+20), y:550, label:"Update" } );
			addChild(uploadButton);
			uploadButton.Init( { x:(updateButton.x+updateButton.width+20), y:550, label:"Upload" } );
			//binds
			addEventListener(MouseEvent.CLICK, clickListener);
			list.anList.addEventListener(Event.CHANGE, changeListener);
		}
		
		private function clickListener(e:MouseEvent):void
		{
			switch(e.target)
			{
				case idCheck.anCheckBox:
					namebutton.visible = !idCheck.anCheckBox.selected;
					textbutton.visible = !idCheck.anCheckBox.selected;
					winbutton.visible = !idCheck.anCheckBox.selected;
					hintbutton.visible = !idCheck.anCheckBox.selected;
				break;
				case addButton.anButton:
					list.Add([{task:{},reward:{}}]);
				break;
				case deleteButton.anButton:
					list.DeleteSelected();
				break;
				case updateButton.anButton:
					//если выжат тумблер
					if (!namebutton.visible) namebutton.SetText(idbutton.RetriveText());
					if (!textbutton.visible) textbutton.SetText(idbutton.RetriveText());
					if (!winbutton.visible) winbutton.SetText(idbutton.RetriveText());
					if (!hintbutton.visible) hintbutton.SetText(idbutton.RetriveText());
					var tempObj:Object = { id:idbutton.RetriveText(),//list.anList.selectedItem.id
					label:idbutton.RetriveText(),
					name:namebutton.RetriveText(), text:textbutton.RetriveText(),
					win:winbutton.RetriveText(), hint:hintbutton.RetriveText(),
					avatar:avatarbutton.RetriveText(), level:levelbutton.RetriveText()}
					list.ChangeData(tempObj);
				break;
			}
		}
		
		private function changeListener(e:Event):void
		{
			idbutton.SetText(list.RetriveData().id);
			namebutton.SetText(list.RetriveData().name);
			textbutton.SetText(list.RetriveData().text);
			winbutton.SetText(list.RetriveData().win);
			hintbutton.SetText(list.RetriveData().hint);
			avatarbutton.SetText(list.RetriveData().avatar);
			levelbutton.SetText(list.RetriveData().level);
			taskList.ChangeTempData(list.RetriveData().task);
			rewardList.ChangeTempData(list.RetriveData().reward);
		}
	}
	
}