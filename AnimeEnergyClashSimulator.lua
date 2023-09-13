       if game.PlaceId == 13370783664 then

            warn("Loading Star XYZ Hub")

            game.StarterGui:SetCore("SendNotification", {
                Title = "Loadings...",
                Text = "Wait 10 Seconds!",
                Icon = "rbxassetid://14765538999",
                Duration = 10
            })
            wait(5)
            local args = {
                [1] = workspace.Check.ToWorld2
            }

            game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.Check.ToWorld3
            }

            game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.Check.ToWorld4
            }

            game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = workspace.Check.ToWorld5
            }

            game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
            wait(1)
            local args = {
                [1] = 1
            }

            game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
            wait(1)
            game.StarterGui:SetCore("SendNotification", {
                Title = "Important",
                Text = "Please Defeat Vegeta!",
                Icon = "rbxassetid://14765538999",
                Duration = 10
            })
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-21.7345638, 4.69635582, 29.9880333, -0.125640884, -6.59777899e-10, 0.992075801, -2.19710294e-09, 1, 3.86797039e-10, -0.992075801, -2.13109508e-09, -0.125640884)
            wait(1)

            warn("Loading Success")



            local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/TranVanBao1411/StarXYZHub/main/OrionUi.lua')))()

            local Window = OrionLib:MakeWindow({Name = "Star XYZ Hub | Anime Energy Clash Simulator", HidePremium = false, IntroText = "Star XYZ Hub | Community", Icon = "14765538999", SaveConfig = true, ConfigFolder = "StarXYZHub"})

            local Tab1 = Window:MakeTab({
                Name = "General",
                Icon = "rbxassetid://7040391851",
                PremiumOnly = false
            })

            local Tab2 = Window:MakeTab({
                Name = "Summon",
                Icon = "rbxassetid://9606626859",
                PremiumOnly = false
            })

            local Tab3 = Window:MakeTab({
                Name = "Teleport",
                Icon = "rbxassetid://9606628205",
                PremiumOnly = false
            })

            local Tab4 = Window:MakeTab({
                Name = "Misc",
                Icon = "rbxassetid://9613645002",
                PremiumOnly = false
            })

            Tab1:AddToggle({
                Name = "Auto Win Boss",
                Default = false,
                Callback = function(value)
                win = value
            end
        })

        Tab1:AddToggle({
            Name = "Auto Rebirth",
            Default = false,
            Callback = function(value)
            rebirth = value
        end
    })

    Tab1:AddToggle({
        Name = "Auto Hacth Egg Event",
        Default = false,
        Callback = function(value)
        event1 = value
    end
})

Tab1:AddToggle({
    Name = "Auto Spin",
    Default = false,
    Callback = function(value)
    spin = value
end
})



Tab1:AddDropdown({
Name = "Select Train",
Default = "None Train",
Options = {"None Train" ,"Sword", "Ki", "Chakra"},
Callback = function(value)

if value == "Sword" then
    local args = {
        [1] = "p1"
    }

    game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))

elseif value == "Ki" then
    local args = {
        [1] = "p2"
    }

    game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))

elseif value == "Chakra" then
    local args = {
        [1] = "p3"
    }

    game:GetService("ReplicatedStorage").Remote.Event.Skin:FindFirstChild("[C-S]TryEquipBestSkin"):FireServer(unpack(args))
end
end
})

--tab2

Tab2:AddDropdown({
Name = "Select Egg Normal",
Default = "None Egg Normal",
Options = {"None Egg Normal", "Egg 1 | World 1", "Egg 2 | World 1", "Egg 3 | World 1", "Egg 4 | World 1", "Egg 5 | World 2", "Egg 6 | World 2", "Egg 7 | World 2", "Egg 8 | World 2", "Egg 9 | World 2", "Egg 10 | World 2", "Egg 11 | World 3", "Egg 12 | World 3", "Egg 13 | World 3", "Egg 14 | World 3", "Egg 15 | World 3", "Egg 16 | World 3", "Egg 17 | World 4", "Egg 18 | World 4", "Egg 19 | World 4", "Egg 20 | World 4", "Egg 21 | World 4", "Egg 22 | World 4", "Egg 23 | World 5", "Egg 24 | World 5", "Egg 25 | World 5", "Egg 26 | World 5" ,"Egg 27 | World 5"},
Callback = function(value)
_G.EggV1 = value
end
})

Tab2:AddDropdown({
Name = "Select Egg Gem",
Default = "None Egg Gem",
Options = {"None Egg Gem", "Egg Gem 1 | World 1"},
Callback = function(value)
_G.EggGem = value
end
})


Tab2:AddToggle({
Name = "Auto Hacth",
Default = false,
Callback = function(value)
hacth = value
end
})

Tab2:AddToggle({
Name = "Auto Craft All",
Default = false,
Callback = function(value)
craft = value
end
})

--tab3

Tab3:AddDropdown({
Name = "World",
Default = "None World",
Options = {"None World", "World 1", "World 2", "World 3", "World 4", "World 5"},
Callback = function(value)

if value == "World 1" then
local args = {
[1] = 1
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 2" then
local args = {
[1] = 2
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 3" then
local args = {
[1] = 3
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 4" then
local args = {
[1] = 4
}

game:GetService("ReplicatedStorage").Remote.Event.World:FindFirstChild("[C-S]ChangeWorld"):FireServer(unpack(args))
elseif value == "World 5" then
local args = {
[1] = workspace.Check.ToWorld5
}

game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerTP"):FireServer(unpack(args))
end
end
})

Tab3:AddDropdown({
Name = "Other",
Default = "None Other",
Options = {"None Other", "Shenlong Shop","Hero Fusion","Rainbow Fusion","Enchant Machine", "Merchant", "Index", "Leaderboard"},
Callback = function(value)

if value == "Shenlong Shop" then
TP(CFrame.new(-63.1748428, 2.99999928, -81.1117249, 0.90548718, 3.53499914e-08, 0.424373597, -5.13271452e-08, 1, 2.62176538e-08, -0.424373597, -4.55216345e-08, 0.90548718))
elseif value == "Hero Fusion" then
TP(CFrame.new(-40.1278725, 3.41228056, -88.5489349, 0.989218533, -1.12450795e-08, 0.146446779, -4.78829698e-10, 1, 8.00205129e-08, -0.146446779, -7.92279025e-08, 0.989218533))
elseif value == "Rainbow Fusion" then
TP(CFrame.new(-1097.77368, 5.40829325, -114.717834, 0.479725003, 2.10208153e-08, 0.877418876, -2.60648108e-08, 1, -9.70673675e-09, -0.877418876, -1.82131927e-08, 0.479725003))
elseif value == "Enchant Machine" then
TP(CFrame.new(-2220.47144, 3.42915511, -0.610107362, 0.517587066, 8.61505498e-08, 0.855630517, -1.02855154e-07, 1, -3.84676007e-08, -0.855630517, -6.80956802e-08, 0.517587066))
elseif value == "Merchant" then
TP(CFrame.new(-973.950134, 3.4519155, 4.2996068, -0.999765277, -4.25697557e-08, 0.0216643158, -4.20107895e-08, 1, 2.62562452e-08, -0.0216643158, 2.5339947e-08, -0.999765277))
elseif value == "Index" then
TP(CFrame.new(-1074.82581, 3.39029384, -124.973579, 0.929243386, 1.00578248e-07, -0.369468182, -7.72264812e-08, 1, 7.79933202e-08, 0.369468182, -4.39420482e-08, 0.929243386))
elseif value == "Leaderboard" then
TP(CFrame.new(-957.847656, 3.15233207, -111.264595, 0.761362076, -6.04607706e-08, -0.648326933, 3.01108436e-08, 1, -5.78959671e-08, 0.648326933, 2.45581226e-08, 0.761362076))
end
end
})

--misc

Tab4:AddToggle({
Name = "White Screen",
Default = false,
Callback = function(value)
white = value
if white then
game:GetService("RunService"):Set3dRenderingEnabled(false)
else
game:GetService("RunService"):Set3dRenderingEnabled(true)
end
end
})

Tab4:AddToggle({
Name = "Auto Claim",
Default = false,
Callback = function(value)
claim = value
end
})

Tab4:AddToggle({
Name = "Auto Click",
Default = true,
Callback = function(value)
autoclick = value
end
})


Tab4:AddButton({
Name = "Redeem All Code",
Callback = function(value)
local args = {
[1] = "Luckyone"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Goku"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Shinyone"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "CurePack"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
wait()
local args = {
[1] = "Rainbow"
}

game:GetService("ReplicatedStorage").CdkRewardFuntion.isPlayerUseCdkRequest:InvokeServer(unpack(args))
end
})

Tab4:AddButton({
Name = "Anti Afk",
Callback = function(value)
local VirtualUser=game:service'VirtualUser' game:service'Players'.LocalPlayer.Idled:connect(function() VirtualUser:CaptureController() VirtualUser:ClickButton2(Vector2.new()) end)
warn("Anti-Afk has Loaded")
end
})

Tab4:AddButton({
Name = "Boost FPS",
Callback = function()
fps()
end
})

--autoclick
spawn(function()
while wait() do
if autoclick then
game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerClick"):FireServer()
elseif event1 then
local args = {
[1] = "E700"
}

game:GetService("ReplicatedStorage").Remote.Event.Events:FindFirstChild("[C-S]TryGetEventReward"):FireServer(unpack(args))
elseif win then
local args = {
[1] = true
}

game:GetService("ReplicatedStorage").Remote.Event.Game:FindFirstChild("[C-S]PlayerPKEnd"):FireServer(unpack(args))
pcall(function()
end)
end
end
end)

--evrnt1
spawn(function()
while wait(1) do
if craft then
game:GetService("ReplicatedStorage").Remote.Event.Pet:FindFirstChild("[C-S]TryCraftAll"):FireServer()
elseif spin then
game:GetService("ReplicatedStorage").Remote.Function.Spin:FindFirstChild("[C-S]TrySpin"):InvokeServer()
elseif rebirth then
game:GetService("ReplicatedStorage").Remote.Event.Rebirth:FindFirstChild("[C-S]TryBuyRebirth"):FireServer()
pcall(function()
end)
end
end
end)

spawn(function()
while wait(1) do
if hacth and _G.EggV1 == "None Egg Normal" then
--none

elseif hacth and _G.EggV1 == "Egg 1 | World 1" then
local args = {
[1] = "Egg1"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 2 | World 1" then
local args = {
[1] = "Egg2"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 3 | World 1" then
local args = {
[1] = "Egg3"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 4 | World 1" then
local args = {
[1] = "Egg4"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 5 | World 2" then
local args = {
[1] = "Egg5"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 6 | World 2" then
local args = {
[1] = "Egg6"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 7 | World 2" then
local args = {
[1] = "Egg7"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 8 | World 2" then
local args = {
[1] = "Egg8"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 9 | World 2" then
local args = {
[1] = "Egg9"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 10 | World 2" then
local args = {
[1] = "Egg10"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))


elseif hacth and _G.EggV1 == "Egg 11 | World 3" then
local args = {
[1] = "Egg11"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 12 | World 3" then
local args = {
[1] = "Egg12"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 13 | World 3" then
local args = {
[1] = "Egg13"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 14 | World 3" then
local args = {
[1] = "Egg14"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 15 World 3" then
local args = {
[1] = "Egg15"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 16 World 3" then
local args = {
[1] = "Egg16"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 17 World 4" then
local args = {
[1] = "Egg17"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 18 | World 4" then
local args = {
[1] = "Egg18"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 19 World 4" then
local args = {
[1] = "Egg19"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 20 | World 4" then
local args = {
[1] = "Egg20"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 21 | World 4" then
local args = {
[1] = "Egg21"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 22 | World 4" then
local args = {
[1] = "Egg22"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 23 | World 5" then
local args = {
[1] = "Egg23"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))



elseif hacth and _G.EggV1 == "Egg 24 | World 5" then
local args = {
[1] = "Egg24"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 25 | World 5" then
local args = {
[1] = "Egg25"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 26 | World 5" then
local args = {
[1] = "Egg26"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))

elseif hacth and _G.EggV1 == "Egg 27 | World 5" then
local args = {
[1] = "Egg27"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))
pcall(function()
end)
end
end
end)

spawn(function()
while wait(1) do
if hacth and _G.EggGem == "None Egg Gem" then
--none

elseif hacth and _G.EggGem == "Egg Gem 1 | World 1" then
local args = {
[1] = "Gem1"
}

game:GetService("ReplicatedStorage").Remote.Function.Luck:FindFirstChild("[C-S]DoLuck"):InvokeServer(unpack(args))
pcall(function()
end)
end
end
end)



function fps()
local decalsyeeted = true
local g = game
local w = g.Workspace
local l = g.Lighting
local t = w.Terrain
sethiddenproperty(l,"Technology",2)
sethiddenproperty(t,"Decoration",false)
t.WaterWaveSize = 0
t.WaterWaveSpeed = 0
t.WaterReflectance = 0
t.WaterTransparency = 0
l.GlobalShadows = false
l.FogEnd = 9e9
l.Brightness = 0
settings().Rendering.QualityLevel = "Level01"
for i, v in pairs(g:GetDescendants()) do
if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
v.Material = "Plastic"
v.Reflectance = 0
elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
v.Transparency = 1
elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
v.Lifetime = NumberRange.new(0)
elseif v:IsA("Explosion") then
v.BlastPressure = 1
v.BlastRadius = 1
elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
v.Enabled = false
elseif v:IsA("MeshPart") then
v.Material = "Plastic"
v.Reflectance = 0
v.TextureID = 10385902758728957
end
end
for i, e in pairs(l:GetChildren()) do
if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
e.Enabled = false
end
end
end

function TP(pos)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end

spawn(function()
while wait(10) do
if claim then
local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "2"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "3"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "4"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "5"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "6"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "7"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "8"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "9"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "10"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "11"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "12"
}

game:GetService("ReplicatedStorage").Remote.Event.Reward:FindFirstChild("[C-S]TryGetReward"):FireServer(unpack(args))
pcall(function()
end)
end
end
end)

OrionLib:Init()
--antixhit
loadstring(game:HttpGet("https://raw.githubusercontent.com/tranvanbao14112008/ScriptLinhTinh/main/AntiChit"))()

else
game.StarterGui:SetCore("SendNotification", {
Title = "Not Support Game",
Text = "Shutdown In 5 Seconds!",
Icon = "rbxassetid://14765538999",
Duration = 5
})
wait(5)
setclipboard("https://discord.gg/8wXcWRaW8r")
wait(0.5)
game.Players.LocalPlayer:Kick("Not Support Game Please Check Status!")
end