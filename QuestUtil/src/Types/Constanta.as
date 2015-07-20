package Types 
{
	/**
	 * ...
	 * @author weedtest
	 */
	public class Constanta 
	{
		
		static public var listOfLocations:Array = [
		{label:"Японский дом", id:1 },
		{label:"Площадь Будды", id:2},
		{label:"Венеция", id:3 },
		{label:"Храм майя", id:4 },
		{label:"Город-призрак", id:5 },
		{label:"Кафе радости", id:6 },
		{label:"Полярная станция", id:7 },
		{label:"Крушение самолета", id:8 },
		{label:"Парк развлечений", id:9 },
		{label:"Бунгало", id:10},
		{label:"Тронный зал", id:11},
		{label:"Туманный сарай", id:12},
		{label:"Ночной сад", id:13},
		{label:"Дворцовый кабинет", id:14},
		{label:"Древняя библиотека", id:15},
		{label:"Мельница", id:16},
		{label:"Восточный базар", id:17},
		{label:"Комната фокусника", id:18},
		{label:"Хижина Ведьмы", id:19},
		{label:"Канун Рождества", id:20},
		{label:"Дерево Свиданий", id:21},
		{label:"Таверна", id:22},
		{label:"Остров Сокровищ", id:23},
		{label:"Театр", id:24},
		{label:"Лесной Домик", id:25},
		{label:"Раскопки", id:26},
		{label:"Зимняя Улица", id:27 },
		{label:"Цветочная лавка", id:28},
		{label:"Смотровая Площадка", id:29}
		];
		
		static public var listOfModes:Array = [
		{label:"Ночь",data:"dark"},
		{label:"Очертания",data:"siluet"},
		{label:"Текст",data:"text"},
		{label:"Пары",data:"couple"},
		{label:"Перевертыши",data:"morph"},
		{label:"Фрагменты",data:"part"},
		{label:"Проклятье",data:"anagram"}
		];
		
		static public var listOfMinigames:Array = [ { label:"1. Блоки", id:1},
		{ label:"3. Трубы", id:3},
		{ label:"5. Три в ряд", id:5},
		{ label:"4. Найди пару", id:4 } ];
		
		static public var listOfAnomaly:Array = [ { label:"Потерянное Время", id:1 },
		{ label:"Призрачное Зеркало", id:2 },
		{ label:"Пожиратель Свитков", id:3 },
		{ label:"Таинственный Дым", id:4 } ];
		
		/*static public var listOfReward:Array = [ { label:"Деньги"},
		{ label:"Опыт" } ];*/
		
		static public var listOfTypes:Array =  [ { label:"Исследуйте %param_1%, чтобы найти предмет.", 1:listOfLocations, 2:"chance", 3:"item" },//0
		{ label:"Исследуйте %param_1% в режиме %param_2%, чтобы найти предмет.", 1:listOfLocations, 2:listOfModes, 3:"chance", 4:"item" },//1
		{ label:"Рассейте аномалию %param_2% из %param_1%, чтобы найти предмет.", 1:listOfLocations, 2:listOfAnomaly, 3:"chance", 4:"item"},//2
		{ label:"Решите головоломку %param_1%, чтобы найти предмет.", 1:listOfMinigames, 2:"chance", item:true},//3
		{ label:"Исследуйте любую фотографию один раз." },//4
		{ label:"Решите любые головоломки два раза."},//5
		{ label:"Решите любую головоломку."},//6
		{ label:"Исследуйте любую фотографию с любой аномалией один раз."},//7
		{ label:"Исследуйте фотографии в режиме %param_1%, чтобы найти предметы.", 1:listOfModes, 2:"chance", item:true},//8
		{ label:"Исследуйте Проклятье в %param_1%, чтобы найти предмет.", 1:listOfLocations, 2:"chance" },//9
		{ label:"Рассейте аномалию %param_1%, чтобы найти предмет.", 1:listOfAnomaly, 2:"chance", item:true},//10
		{ label:"Исследуйте уже доступные фотографии, чтобы найти предметы.", chace:true },//11
		{ label:"Нажмите на разорванную фотографию %param_1%, чтобы начать ее восстанавливать."},//12
		{ label:"Чтобы обновить статус, разрешите приложению обновить ваш статус"},
		{ label:"Соберите коллекцию, чтобы получить предмет.", item:true } ];//13
		
		static public var listOfReward:Array = [ {label:"Простая награда", 1:"Money",  2:"Exp", 3:"Crystal" } ];
		static public var listOfReuired:Array = [{1:"Quest"},{2:"Unlock scene"},{3:"socialnetwork"},{4:"letter"}];
		
	}

}