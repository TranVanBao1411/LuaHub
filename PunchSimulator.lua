
if game.PlaceId == 14236123211 then

--Importal
local applicationName = 'StarXYZHub'
local savedKeyPath = applicationName..".json"
local KeyLibrary = KeyLibrary or loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
local KeySystem = KeyLibrary.new(applicationName)
local keyTextbox
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/TranVanBao1411/StarXYZHub/main/OrionUi.lua')))()

local function isKeyValid(keyInput)
    if keyInput then
        local isKeyValid = KeySystem:verifyKey(keyInput)
        if isKeyValid then
            OrionLib:MakeNotification({
                Name = "Key Is Valid !",
                Content = "Loading Star XYZ Hub ",
                Image = "rbxassetid://14878105537",
                Time = 5
            })
            wait(2)
            local Window = OrionLib:MakeWindow({Name = "Star XYZ Hub | Punch Simulator", HidePremium = false, IntroText = "Star XYZ Hub | Community", Icon = "14878105537"})

    g = hookfunction(wait, function(seconds)
        return g(0)
    end)

    local GeneralTab = Window:MakeTab({
        Name = "General",
        Icon = "rbxassetid://7040391851",
        PremiumOnly = false
    })

    local SummonTab = Window:MakeTab({
        Name = "Summon",
        Icon = "rbxassetid://9606626859",
        PremiumOnly = false
    })

    local TeleportTab = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://9606628205",
        PremiumOnly = false
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://9608089732",
        PremiumOnly = false
    })

    GeneralTab:AddToggle({
        Name = "Auto Farm ",
        Default = _G.Settings.Farm,
        Callback = function(va)
            getgenv().Farm = va
            _G.Settings.Farm = va
            saveSettings()
        end
    })



    GeneralTab:AddToggle({
        Name = "Auto Claim Quest",
        Default = _G.Settings.ClaimQuest,
        Callback = function(va)
            getgenv().ClaimQuest = va
            _G.Settings.ClaimQuest = va
            saveSettings()
        end
    })

    GeneralTab:AddToggle({
        Name = "Auto Rebirth",
        Default = _G.Settings.Rebirth,
        Callback = function(va)
            getgenv().Rebirth = va
            _G.Settings.Rebirth = va
            saveSettings()
        end
    })

    GeneralTab:AddToggle({
        Name = "Auto Click",
        Default = _G.Settings.Click,
        Callback = function(va)
            getgenv().Click = va
            _G.Settings.Click = va
            saveSettings()
        end
    })

    SummonTab:AddDropdown({
        Name = "Select Egg Normal",
        Default = "...",
        Options = {"...", "Egg 1","Egg 2","Egg 3","Egg 4","Egg 5", "Egg 6","Egg 7","Egg 8","Egg 9","Egg 10", "Egg 11","Egg 12","Egg 13","Egg 14","Egg 15"},
        Callback = function(va)
            _G.EggNormal = va
            _G.Settings.EggNormal = va
            saveSettings()
        end
    })



    SummonTab:AddDropdown({
        Name = "Select Egg Special",
        Default = "...",
        Options = {"...", "Forest Egg", "Visit Egg"},
        Callback = function(va)
            _G.EggEvents = va
            _G.Settings.EggEvents = va
            saveSettings()
        end
    })

    SummonTab:AddToggle({
        Name = "Auto Hacth",
        Default = _G.Settings.Hacth,
        Callback = function(va)
            getgenv().Hacth = va
            _G.Settings.Hacth = va
            saveSettings()
        end
    })

    SummonTab:AddButton({
        Name = "Equip Best Pets",
        Callback = function()
            game:GetService("ReplicatedStorage").Events.EquipBest:InvokeServer()
        end
    })

    TeleportTab:AddTextbox({
        Name = "Teleport (World 1 - World 15)",
        Default = "1",
        TextDisappear = true,
        Callback = function(world)
            local args = {
                [1] = "Teleport",
                [2] = tonumber(world)
            }

            game:GetService("ReplicatedStorage").Events.TeleportEvent:InvokeServer(unpack(args))
        end
    })

    TeleportTab:AddParagraph("How To Use? | Example: 1 Or 2","Only When You Unlock The World Can Move")

    MiscTab:AddParagraph("Script Made By Tran Van Bao (Star XYZ Hub)","YouTube: @tranvanbao1411 | Discord: https://discord.gg/8wXcWRaW8r")

    local blackScreenGui = nil

    MiscTab:AddToggle({
        Name = "Black Screen",
        Default = _G.Settings.Black,
        Callback = function(va)
            getgenv().Black = va
            _G.Settings.Black = va
            if getgenv().Black then
                local Players = game:GetService("Players")
                local player = Players.LocalPlayer

                blackScreenGui = Instance.new("ScreenGui")
                blackScreenGui.Name = "BlackScreenGui"

                local blackFrame = Instance.new("Frame")
                blackFrame.Name = "BlackFrame"
                blackFrame.Size = UDim2.new(1, 0, 1, 0)
                blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
                blackFrame.Parent = blackScreenGui

                blackScreenGui.Parent = player.PlayerGui
            else
                if blackScreenGui then
                    blackScreenGui:Destroy()
                    blackScreenGui = nil
                end
            end
            saveSettings()
        end
    })

    MiscTab:AddToggle({
        Name = "White Screen",
        Default = _G.Settings.White,
        Callback = function(va)
            getgenv().White = va
            _G.Settings.White = va
            saveSettings()
            if getgenv().White then
                game:GetService("RunService"):Set3dRenderingEnabled(false)
            else
                game:GetService("RunService"):Set3dRenderingEnabled(true)
            end
            saveSettings()
        end
    })



    MiscTab:AddButton({
        Name = "Redeem All Codes",
        Callback = function()
            redeemallcode()
        end
    })

    MiscTab:AddButton({
        Name = "Anti Afk",
        Callback = function(va)
            local VirtualUser = game:service "VirtualUser"
            game:service "Players".LocalPlayer.Idled:connect(
                function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                end)
        end
    })

    MiscTab:AddButton({
        Name = "Boost FPS",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/TranVanBao1411/ScriptLinhTinh/main/BoostFPS"))()
        end
    })

    MiscTab:AddButton({
        Name = "Rejoin Server",
        Callback = function()
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        end
    })

    MiscTab:AddButton({
        Name = "Hop Server",
        Callback = function()
            hopsv()
        end
    })
            writefile(savedKeyPath, keyInput)
        else
            OrionLib:MakeNotification({
                Name = "Invalid | Expired Key!",
                Content = "Could Be Wrong",
                Image = "rbxassetid://14878105537",
                Time = 5
            })
        end
    end
end

local Window = OrionLib:MakeWindow({Name = "Star XYZ Hub | Key System", HidePremium = false, IntroText = "Star XYZ Hub | Community", Icon = "14878105537"})

local HomeTab = Window:MakeTab({
    Name = "Home",
    Icon = "rbxassetid://7040391851",
    PremiumOnly = false
})

HomeTab:AddParagraph("Game Support","Anime Energy Clash Simulator | Punch Simulator")

HomeTab:AddButton({
	Name = "Coppy Youtube",
	Callback = function()
      		setclipboard("@tranvanbao1411")
  	end    
})

HomeTab:AddButton({
	Name = "Coppy Discord",
	Callback = function()
      		setclipboard("https://discord.gg/8wXcWRaW8r")
  	end    
})


local Web1s = Window:MakeTab({
    Name = "Web1s",
    Icon = "rbxassetid://14913479681",
    PremiumOnly = false
})

local LinkVertise = Window:MakeTab({
    Name = "LinkVertise (Soon)",
    Icon = "rbxassetid://14913489304",
    PremiumOnly = false
})

Web1s:AddTextbox({
    Name = "Put Your Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        keyTextbox = Value
    end
})

Web1s:AddButton({
    Name = "Check Key",
    Callback = function()
        isKeyValid(keyTextbox)
    end
})

Web1s:AddButton({
    Name = "Get Key",
    Callback = function()
        KeySystem:copyGetKeyURL()
    end
})

if readfile and writefile then
    local success_file, error_file = pcall(function()
        local is_key_present = isfile(savedKeyPath);

        if is_key_present == true then
            OrionLib:MakeNotification({
                Name = "Checking Saved Key...",
                Content = "Please Wait 3-5 Seconds",
                Image = "rbxassetid://14878105537",
                Time = 5
            })

            local key_file_txt = readfile(savedKeyPath)
            local onl_key = isKeyValid(key_file_txt)

            if onl_key then
                OrionLib:MakeNotification({
                    Name = "Saved Key Is Valid",
                    Content = "Loading Star XYZ Hub",
                    Image = "rbxassetid://14878105537",
                    Time = 5
                })
            else
                delfile(savedKeyPath)
                OrionLib:MakeNotification({
                    Name = "Saved Key Is Invalid!",
                    Content = "Get New Key Or Buy Premium",
                    Image = "rbxassetid://14878105537",
                    Time = 5
                })
            end
        end
    end)
    if error_file then
        OrionLib:MakeNotification({
            Name = "Failed To Check Saved Key",
            Content = "See Console Error",
            Image = "rbxassetid://14878105537",
            Time = 5
        })
        warn(error_file)
    end
end

    _G.Settings = {
        Farm = false;
        Rebirth = false;
        Hacth = false;
        Click = false;
        White = false;
        Black = false;
        ClaimQuest = false;
        EggNormal = "...";
        EggEvents = "...";
    }

    local foldername = "StarXYZHub"
    local filename = "PS-"..game.Players.LocalPlayer.Name..".json"

    function saveSettings()
        local HttpService = game:GetService("HttpService")
        local json = HttpService:JSONEncode(_G.Settings)
        if (writefile) then
            if isfolder(foldername) then
                if isfile(foldername.."\\"..filename) then
                    writefile(foldername.."\\"..filename, json)
                else
                    writefile(foldername.."\\"..filename, json)
                end
            else
                makefolder(foldername)
                writefile(foldername.."\\"..filename, json)
            end
        end
    end

    function loadSettings()
        local HttpService = game:GetService("HttpService")
        if isfile(foldername.."\\"..filename) then
            _G.Settings = HttpService:JSONDecode(readfile(foldername.."\\"..filename))
        end
    end

    loadSettings()

    function tween(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 1000000000000000000000000 then
            Speed = 999999999999
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end


    function CheckDamage()
        local Damage = game:GetService("Players").LocalPlayer.leaderstats.Damage.Value
        if Damage == 100 or Damage <= 1000 then
            tween(CFrame.new(-1314.02319, 99.4753189, 2562.61597, -0.997891545, 4.50509781e-08, -0.0649032816, 4.33103899e-08, 1, 2.82251698e-08, 0.0649032816, 2.53546713e-08, -0.997891545))
            Num = 1
        elseif Damage == 1000 or Damage <= 10000 then
            tween(CFrame.new(-1339.00317, 99.4753494, 2563.13159, -0.998538971, -4.211714e-08, 0.0540363044, -3.97720044e-08, 1, 4.44746249e-08, -0.0540363044, 4.22605133e-08, -0.998538971))
            Num = 2
        elseif Damage == 10000 or Damage <= 50000 then
            tween(CFrame.new(-1364.28296, 99.4752884, 2562.76538, -0.99923718, -3.63821773e-09, 0.0390520543, -2.00966777e-09, 1, 4.17412878e-08, -0.0390520543, 4.16309653e-08, -0.99923718))
            Num = 3
        elseif Damage == 50000 or Damage <= 62500 then
            tween(CFrame.new(-1388.8335, 102.523872, 2567.89966, 0.982583523, 0.00172104209, -0.185813457, 0.014735085, 0.996086657, 0.0871452391, 0.185236275, -0.088365458, 0.978712976))
            Num = 4
            --world 2
        elseif Damage == 62500 or Damage <= 312000 then
            tween(CFrame.new(-2245.64648, 99.4754257, 2538.70117, 0.0925222188, 1.01467784e-07, -0.995710611, 2.96855589e-08, 1, 1.046633e-07, 0.995710611, -3.92419075e-08, 0.0925222188))
            wait()
            buyworld(2)
            Num = 5
        elseif Damage == 312000 or Damage <= 1560000 then
            tween(CFrame.new(-2245.72241, 99.4753647, 2563.1145, -0.0509806871, -4.28800426e-08, -0.998699665, -6.64267645e-08, 1, -3.95449824e-08, 0.998699665, 6.43243609e-08, -0.0509806871))
            Num = 6
        elseif Damage == 1560000 or Damage <= 4370000 then
            tween(CFrame.new(-2245.26562, 99.4752274, 2587.15234, -0.00568565447, 2.07834834e-08, -0.999983847, -1.2600484e-09, 1, 2.07909832e-08, 0.999983847, 1.37823841e-09, -0.00568565447))
            Num = 7
        elseif Damage == 4370000 or Damage <= 6200000 then
            tween(CFrame.new(-2247.25488, 104.467155, 2613.22339, -0.100681208, -0.0180319976, -0.994755328, 0.00886632968, 0.999779761, -0.019020455, 0.994879246, -0.010734831, -0.100499161))
            Num = 8
            --world 3
        elseif Damage == 6200000 or Damage <= 31000000 then
            tween(CFrame.new(-2949.01099, 99.4753494, 2555.86694, -0.138930798, -4.49987816e-08, 0.990302086, -1.08802574e-07, 1, 3.01753929e-08, -0.990302086, -1.03555124e-07, -0.138930798))
            wait()
            buyworld(3)
            Num = 9
        elseif Damage == 31000000 or Damage <= 155000000 then
            tween(CFrame.new(-2949.31494, 99.4752579, 2581.60571, 0.0222411789, 7.07141368e-08, 0.999752641, -5.24192316e-08, 1, -6.95654805e-08, -0.999752641, -5.08590468e-08, 0.0222411789))
            Num = 10
        elseif Damage == 155000000 or Damage <= 434000000 then
            tween(CFrame.new(-2949.15527, 99.4753189, 2606.15356, -0.0589259528, 3.10421164e-08, 0.998262346, -4.8360107e-08, 1, -3.39507764e-08, -0.998262346, -5.0276654e-08, -0.0589259528))
            Num = 11
        elseif Damage == 434000000 or Damage <= 750000000 then
            tween(CFrame.new(-2946.47754, 103.472603, 2632.22949, -0.0825786069, 0.11675451, 0.989721775, -0.0206443164, 0.99270016, -0.118828349, -0.996370733, -0.0302448086, -0.0795654804))
            Num = 12
            --world 4
        elseif Damage == 750000000 or Damage <= 3750000000 then
            tween(CFrame.new(-4063.44946, 99.4753189, 2666.15552, 0.981752038, -4.5798294e-09, -0.190165609, 2.35277557e-08, 1, 9.73814025e-08, 0.190165609, -1.00078559e-07, 0.981752038))
            wait()
            buyworld(4)
            Num = 13
        elseif Damage == 3750000000 or Damage <= 18700000000 then
            tween(CFrame.new(-4088.85254, 99.4753799, 2667.52515, 0.999867797, -1.4446957e-09, -0.0162611417, 2.89146818e-09, 1, 8.89476439e-08, 0.0162611417, -8.8982901e-08, 0.999867797))
            Num = 14
        elseif Damage == 18700000000 or Damage <= 525000000000 then
            tween(CFrame.new(-4113.53174, 99.4753036, 2666.16577, 0.996063113, -2.73226247e-10, 0.0886468962, -4.13466344e-10, 1, 7.72801823e-09, -0.0886468962, -7.73424613e-09, 0.996063113))
            Num = 15
        elseif Damage == 525000000000 or Damage <= 120000000000 then
            tween(CFrame.new(-4138.29395, 104.429298, 2667.78638, 0.99619019, -0.0157414339, -0.0857749358, 0.0193603765, 0.998949945, 0.0415239371, 0.0850312188, -0.0430263765, 0.995448828))
            Num = 16
            --world 5
        elseif Damage == 120000000000 or Damage <= 600000000000 then
            tween(CFrame.new(-4801.8916, 99.4753799, 2550.42578, -0.076288186, 9.45952863e-08, 0.99708581, 3.24346665e-08, 1, -9.23901524e-08, -0.99708581, 2.52918682e-08, -0.076288186))
            wait()
            buyworld(5)
            Num = 17
        elseif Damage == 600000000000 or Damage <= 3000000000000 then
            tween(CFrame.new(-4801.7749, 99.4755325, 2574.22412, -0.092809692, -2.64306674e-08, 0.995683849, 1.0976021e-08, 1, 2.75683369e-08, -0.995683849, 1.34872558e-08, -0.092809692))
            Num = 18
        elseif Damage == 3000000000000 or Damage <= 8400000000000 then
            tween(CFrame.new(-4801.32227, 99.4754257, 2600.50293, -0.0192862041, 9.98558924e-09, 0.999814034, -3.74695617e-08, 1, -1.07102265e-08, -0.999814034, -3.76691531e-08, -0.0192862041))
            Num = 19
        elseif Damage == 8400000000000 or Damage <= 25000000000000 then
            tween(CFrame.new(-4800.979, 105.475555, 2625.76978, -0.0419393256, 0.0188817494, 0.99894172, -0.0246750098, 0.999496877, -0.0199281927, -0.998815417, -0.0254846718, -0.0414523184))
            Num = 20
            --world 6
        end
    end

    function buyegg(number)
        local args = {
            [1] = number
        }

        game:GetService("ReplicatedStorage").Events.PlayerPressedKeyOnEgg:FireServer(unpack(args))
    end

    function fixv321()
        game:GetService("VirtualUser"):Button1Down(Vector2.new(), workspace.CurrentCamera.CFrame)
        wait()
        game:GetService("ReplicatedStorage").Events.PushEvent:FireServer("", -math.huge)
    end

    spawn(function()
        while wait(0.1) do
            if getgenv().Hacth and _G.EggNormal == "Egg 1" then
                buyegg("1")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 2" then
                buyegg("2")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 3" then
                buyegg("3")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 4" then
                buyegg("4")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 5" then
                buyegg("5")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 6" then
                buyegg("6")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 7" then
                buyegg("7")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 8" then
                buyegg("8")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 9" then
                buyegg("9")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 10" then
                buyegg("10")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 11" then
                buyegg("11")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 12" then
                buyegg("12")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 13" then
                buyegg("13")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 14" then
                buyegg("14")

            elseif getgenv().Hacth and _G.EggNormal == "Egg 15" then
                buyegg("15")

                pcall(function()
                    end)
            end
        end
    end)


    spawn(function()
        while wait(0.1) do
            if getgenv().Hacth and _G.EggEvents == "Visit Egg" then
                buyegg("VisitEgg")

            elseif getgenv().Hacth and _G.EggEvents == "Forest Egg" then
                buyegg("Forest2")

                pcall(function()
                    end)
            end
        end
    end)

    spawn(function()
        while wait() do
            if getgenv().Farm then
                fixv321()
                pcall(function()
                    CheckDamage()
                end)
            end
        end
    end)

    function buyworld(number)
        local args = {
            [1] = number
        }

        game:GetService("ReplicatedStorage").Events.LevelGUIBuyButtonPressed:FireServer(unpack(args))
    end

    spawn(function()
        while wait() do
            if getgenv().Click then
                game:GetService("ReplicatedStorage").Events.DamageIncreaseOnClickEvent:FireServer("", -math.huge)
                pcall(function()
                    end)
            end
        end
    end)

    spawn(function()
        while wait(1) do
            if getgenv().ClaimQuest then
                game:GetService("ReplicatedStorage").Events.QuestEvent:InvokeServer("Claim", -math.huge)
                pcall(function()
                    end)
            end
        end
    end)

    spawn(function()
        while wait(1) do
            if getgenv().Rebirth then
                game:GetService("ReplicatedStorage").Events.AscendEvent:FireServer(true)
                pcall(function()
                    end)
            end
        end
    end)

    function code(concu)
        local args = {
            [1] = "Claim",
            [2] = concu
        }

        game:GetService("ReplicatedStorage").Events.CodeEvent:InvokeServer(unpack(args))
    end

    function redeemallcode()
        code("WELLCOME")
        code("100LIKES")
        code("1KLIKES")
        code("10KLIKES")
        code("6KLIKES")
        code("4KLIKES")
        code("150K")
    end

function hopsv()
local Player = game.Players.LocalPlayer
            local Http = game:GetService("HttpService")
            local TPS = game:GetService("TeleportService")
            local Api = "https://games.roblox.com/v1/games/"

            local _place,_id = game.PlaceId, game.JobId
            local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=10"
            function ListServers(cursor)
                local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
                return Http:JSONDecode(Raw)
            end

            time_to_wait = 0.1
            while wait(time_to_wait) do
                Player.Character.HumanoidRootPart.Anchored = true
                local Servers = ListServers()
                local Server = Servers.data[math.random(1,#Servers.data)]
                TPS:TeleportToPlaceInstance(_place, Server.id, Player)
            end
            end

    function tween(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 1000000000000000000000000 then
            Speed = 999999999999
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
    end

else
    wait(1)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Not Support Game",
        Text = "Shutdown In 5 Seconds!",
        Icon = "rbxassetid://14878105537",
        Duration = 5
    })
    wait(5)
    setclipboard("https://discord.gg/ta7EasMvCv")
    wait(0.5)
    game.Players.LocalPlayer:Kick("Not Support Game Please Check Status!")
end
