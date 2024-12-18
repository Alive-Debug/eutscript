if game.PlaceId == 122809141833750 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "EUT|Eclipse", HidePremium = false, SaveConfig = true, ConfigFolder = "Fisch Hub"})
    local player = game.Players.LocalPlayer
    local character = player.character or player.CharacterAdded:Wait()

    ---tab---
    local Tab = Window:MakeTab({
        Name = "|Info|",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local tab1 = Window:MakeTab({
        Name = "|AutoFarm|",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local tab2 = Window:MakeTab({
        Name = "|Teleports|",
        Icon = "rbxassetid://4483345998"
    })
    
     ---sections---
     local Section = Tab:AddSection({
        Name = "Info"
    })

    local Section1 = tab1:AddSection({
        Name = "AutoBuy"
    })

    local Section2 = tab2:AddSection({
        Name = "Teleports"
    })
    
    ---paraghraps---
    Tab:AddParagraph("Updated","updated on 18.12.2024")
    Tab:AddParagraph("Changelog - release 1.1","Release Beta 1.1")
    Tab:AddParagraph("Thanks to MateoPrinter ,cool name, for the idea !")

    ---cb---
    tab1:AddButton({
        Name = "Freeze Player",
        Callback = function()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        
            -- Anchor the HumanoidRootPart to freeze the character in place
            humanoidRootPart.Anchored = true
          end    
    })

    tab1:AddButton({
        Name = "unFreeze Player",
        Callback = function()
            local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        
            -- Anchor the HumanoidRootPart to freeze the character in place
            humanoidRootPart.Anchored = false
          end    
    })

end
