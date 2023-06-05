function Client_PresentMenuUI(rootParent, setMaxSize, setScrollable, game, close)

    	setMaxSize(450, 320);

    
local vert = UI.CreateVerticalLayoutGroup(rootParent);
local row1 = UI.CreateHorizontalLayoutGroup(vert);

   UI.CreateTextInputField(row1).SetText('fhdjksahfjkajkhdkj').SetPlaceholderText(" Name of Character                       ").SetFlexibleWidth(1).SetCharacterLimit(30).SetPreferredWidth(30)

        
        
end

