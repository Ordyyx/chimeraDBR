-- Configure loading of Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/Ordyyx/chimeraDBR/main/rayfieldbackup.lua'))()
local Window = Rayfield:CreateWindow({
    Name = "Chimera DBR",
    LoadingTitle = "Chimera Dead by Roblox",
    LoadingSubtitle = "by Ordy",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
 })

--  Creation of Universal Tab
 local Universal = Window:CreateTab("Universal Cheats")
 local Movement = Universal:CreateSection("Movement")
 local Walkspeed = Universal:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 250},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Callback = function(ws)
        while wait() do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = ws
        end
    end,
 })
 local Visuals = Universal:CreateSection("Visuals")
 local ClearView = Universal:CreateButton({
    Name = "ClearView+",
    Callback = function()
        pcall(function()
            game.Lighting.Bloom:Destroy()
            game.Lighting.DepthOfField:Destroy()
            game.Lighting.ColorCorrection:Destroy()
            game.Lighting.FogEnd = 10000
            game.Lighting.Brightness = 1
            game.Lighting.Ambient = Color3.fromRGB(255, 255, 255)
            game.Lighting.GlobalShadows = false
        end)
    end,
 })



--  Creation of Survivor Tab
 local Survivor = Window:CreateTab("Survivor Cheats")
--  Survivor Visual Cheats
 local SurvVisuals = Survivor:CreateSection("Visuals")
 local GenESP = Survivor:CreateToggle({
    Name = "Generator ESP",
    CurrentValue = false,
    Callback = function(genesp)
        if genesp then
            local gen1 = Instance.new("Highlight")
            gen1.FillTransparency = 1
            gen1.Parent = game.Workspace.Generator1
            local gen2 = Instance.new("Highlight")
            gen2.FillTransparency = 1
            gen2.Parent = game.Workspace.Generator2
            local gen3 = Instance.new("Highlight")
            gen3.FillTransparency = 1
            gen3.Parent = game.Workspace.Generator3
            local gen4 = Instance.new("Highlight")
            gen4.FillTransparency = 1
            gen4.Parent = game.Workspace.Generator4
            local gen5 = Instance.new("Highlight")
            gen5.FillTransparency = 1
            gen5.Parent = game.Workspace.Generator5
            local gen6 = Instance.new("Highlight")
            gen6.FillTransparency = 1
            gen6.Parent = game.Workspace.Generator6
            local gen7 = Instance.new("Highlight")
            gen7.FillTransparency = 1
            gen7.Parent = game.Workspace.Generator7
            local gen8 = Instance.new("Highlight")
            gen8.FillTransparency = 1
            gen8.Parent = game.Workspace.Generator8
        else
            game.Workspace.Generator1.Highlight:Destroy()
            game.Workspace.Generator2.Highlight:Destroy()
            game.Workspace.Generator3.Highlight:Destroy()
            game.Workspace.Generator4.Highlight:Destroy()
            game.Workspace.Generator5.Highlight:Destroy()
            game.Workspace.Generator6.Highlight:Destroy()
            game.Workspace.Generator7.Highlight:Destroy()
            game.Workspace.Generator8.Highlight:Destroy()
        end
    end,
 })
 local ExitESP = Survivor:CreateToggle({
    Name = "Exit ESP",
    CurrentValue = false,
    Callback = function(exitesp)
        if exitesp then
            local exit1 = Instance.new("Highlight")
            exit1.FillTransparency = 1
            exit1.OutlineColor = Color3.fromRGB(255, 0, 0)
            exit1.Parent = game.Workspace.ExitGate1.ExitArea.Union
            local exit2 = Instance.new("Highlight")
            exit2.FillTransparency = 1
            exit2.OutlineColor = Color3.fromRGB(255, 0, 0)
            exit2.Parent = game.Workspace.ExitGate2.ExitArea.Union
        else
            game.Workspace.ExitGate1.Highlight:Destroy()
            game.Workspace.ExitGate2.Highlight:Destroy()
        end
    end,
 })
 local KillESP = Survivor:CreateToggle({
    Name = "Killer ESP",
    CurrentValue = false,
    Callback = function(killesp)
        if killesp then
            local ingameplayers = game.Players:GetChildren()
            for i = 1, #ingameplayers do
                if ingameplayers[i].Backpack.Scripts.Killer.Value == true then
                    local survhighlight = Instance.new("Highlight")
                    survhighlight.FillTransparency = 1
                    local playername = ingameplayers[i].Name
                    local playerpart = game.Workspace[playername]
                    survhighlight.Parent = playerpart
                end
            end
        else
            local ingameplayers = game.Players:GetChildren()
            for i = 1, #ingameplayers do
                if ingameplayers[i].Backpack.Scripts.Killer.Value == true then
                    local playername = ingameplayers[i].Name
                    local playerpart = game.Workspace[playername]
                    playerpart.Highlight:Destroy()
                end
            end
        end
    end,
 })
--  Survivor General Cheats
 local SurvCheats = Survivor:CreateSection("Cheats")
 local InstantGen = Survivor:CreateToggle({
    Name = "Instant Generator",
    CurrentValue = false,
    Callback = function(instantgenfix)
        local genLoop = false
        if instantgenfix then
            genLoop = true
            if genLoop == true then
                while wait() do
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator8")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator7")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator6")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator5")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator4")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator3")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator2")
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SendSkillCheck"):FireServer("Great", "Generator1")
                end
            end
        else
            genLoop = false
        end
    end,
 })
 local UnlockGate = Survivor:CreateButton({
    Name = "Unlockable Exits",
    Callback = function()
        game.Workspace.MatchValues.GeneratorsRepaired = 5
    end,
 })
 local Points = Survivor:CreateButton({
    Name = "Get Points (May Lag)",
    Callback = function()
        while wait() do
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Info_Pass"):FireServer("Boldness", 1500, "CLEANSING")
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Info_Pass"):FireServer("Altruism", 1500, "HOOK RESCUE")
        end
    end,
 })




--  Creation of Killer Tab
 local Killer = Window:CreateTab("Killer Cheats")
--  Killer Visual Cheats
 local KillVisuals = Killer:CreateSection("Visuals")
 local SurvESP = Killer:CreateToggle({
    Name = "Survivor ESP",
    CurrentValue = false,
    Callback = function(survesp)
        if survesp then
            local ingameplayers = game.Players:GetChildren()
            for i = 1, #ingameplayers do
                if ingameplayers[i].Backpack.Scripts.Killer.Value == false then
                    local survhighlight = Instance.new("Highlight")
                    survhighlight.FillTransparency = 1
                    local playername = ingameplayers[i].Name
                    local playerpart = game.Workspace[playername]
                    survhighlight.Parent = playerpart
                end
            end
        else
            local ingameplayers = game.Players:GetChildren()
            for i = 1, #ingameplayers do
                if ingameplayers[i].Backpack.Scripts.Killer.Value == false then
                    local playername = ingameplayers[i].Name
                    local playerpart = game.Workspace[playername]
                    playerpart.Highlight:Destroy()
                end
            end
        end
    end,
 })



--  Creation of Options Tab
 local Options = Window:CreateTab("Options")
 local Hide = Options:CreateLabel("Press RightShift to hide UI.")
 local Close = Options:CreateButton({
    Name = "Close Chimera DBR",
    Callback = function()
        Rayfield:Destroy()
    end,
 })
 
