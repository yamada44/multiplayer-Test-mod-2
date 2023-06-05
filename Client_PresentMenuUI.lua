function Client_PresentMenuUI(rootParent, setMaxSize, setScrollable, game, close)

local vert = UI.CreateVerticalLayoutGroup(rootParent);
    TextInputfield = UI.CreateTextInputField(vert).SetPlaceholderText(" Name of Character                       ").SetFlexibleWidth(1).SetCharacterLimit(30)
        
        
        local customOption = MenuButton()
        customOption:SetText("Take Notes")
        customOption:SetAction(function()
            open_note_interface()
        end)
        UI.MainMenu:AddButton(customOption)
    end
end

function open_note_interface()
    noteWindow = Panel()
    noteWindow:SetTitle("Note Interface")
    noteWindow:SetSize(Vector2(400, 300))
    noteWindow:Center()
    noteWindow:MakeModal(true)

    noteInput = TextInput(noteWindow)
    noteInput:SetSize(Vector2(380, 250))
    noteInput:SetMultiline(true)
    noteInput:SetEditable(true)
    noteInput:Dock(DOCK_FILL)

    saveButton = Button(noteWindow)
    saveButton:SetText("Save Notes")
    saveButton:SetSize(Vector2(100, 30))
    saveButton:Dock(DOCK_BOTTOM)
    saveButton.OnClick = function()
        local noteText = noteInput:GetText()
        save_notes(noteText)
        noteWindow:Close()
        noteWindow = nil
        noteInput = nil
        saveButton = nil
    end

    noteWindow:Show()
end

function save_notes(noteText)
    -- Implement your own saving logic here
    -- For example, you could append the notes to a global variable or save them to a file
    -- In this example, we will print the notes to the console
    print("Saved Notes:")
    print(noteText)
end
