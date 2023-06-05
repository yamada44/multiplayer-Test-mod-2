function Client_PresentMenuUI(rootParent, setMaxSize, setScrollable, game, close)

Game = game;
	Close = close;

	setMaxSize(450, 320);
	
local vert0 = UI.CreateVerticalLayoutGroup(rootParent);
	Chartracker = UI.CreateTextInputField(vert0).SetPlaceholderText(" Name of Character                       ").SetFlexibleWidth(1).SetCharacterLimit(30)


        
        
end

