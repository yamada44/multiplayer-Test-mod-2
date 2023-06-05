function Client_PresentMenuUI(rootParent, setMaxSize, setScrollable, game, close)

Game = game;
	Close = close;

	setMaxSize(450, 320);
	
	 temphidden = Mod.Settings.Hidden -- if game has already started. set values
	 tempGoldtax = Mod.Settings.GoldTax
	 Temppercent = Mod.Settings.Percent
	if(temphidden == nil)then temphidden = false end
	if(tempGoldtax == nil)then tempGoldtax = 0 end
	if(Temppercent == nil)then Temppercent = 0 end

	

	local vert = UI.CreateVerticalLayoutGroup(rootParent);

	if (game.Settings.CommerceGame == false) then
		UI.CreateLabel(vert).SetText("This mod only works in commerce games.  This isn't a commerce game.");
		return;
	end

	if (game.Us == nil or game.Us.State ~= WL.GamePlayerState.Playing) then
		UI.CreateLabel(vert).SetText("You cannot gift gold since you're not in the game");
		return;
	end

	local row1 = UI.CreateHorizontalLayoutGroup(vert);
	UI.CreateLabel(row1).SetText("Gift gold to this player: ");
	TargetPlayerBtn = UI.CreateButton(row1).SetText("Select player...").SetOnClick(TargetPlayerClicked);

	local goldHave = game.LatestStanding.NumResources(game.Us.ID, WL.ResourceType.Gold);

	local row2 = UI.CreateHorizontalLayoutGroup(vert);
	UI.CreateLabel(row2).SetText('Amount of gold to give away: ');
    GoldInput = UI.CreateNumberInputField(row2)
		.SetSliderMinValue(1)
		.SetSliderMaxValue(goldHave)
		.SetValue(1);


		
	UI.CreateButton(vert).SetText("Gift").SetOnClick(SubmitClicked);

	local row3 = UI.CreateHorizontalLayoutGroup(vert);

	if (tempGoldtax > 0 )then
	UI.CreateLabel(row3).SetText("Gifting Gold to someone applies a Tax. Tax is equal to " .. tempGoldtax .. " multiplier in game settings").SetColor('#00F4FF')
	elseif (Temppercent > 0)then
		UI.CreateLabel(row3).SetText("Gifting Gold to someone applies a Tax. Tax is equal to " .. Temppercent .. "%").SetColor('#00F4FF')
	else 
		UI.CreateLabel(row3).SetText("No Tax Applied").SetColor('#00F4FF')
	end
 
	local row4 = UI.CreateHorizontalLayoutGroup(vert);
	Reveal = true
	Reveal = UI.CreateCheckBox(row4).SetText("Reveal Gold amount").SetIsChecked(Reveal)

	
	print(Reveal.GetIsChecked())

        
        
end

