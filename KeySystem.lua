--Importal
local applicationName = 'StarXYZHub'
local savedKeyPath = applicationName..".json"
local KeyLibrary = KeyLibrary or loadstring(game:HttpGet('https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/setup_obf.lua'))()
local KeySystem = KeyLibrary.new(applicationName)
local keyTextbox
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/TranVanBao1411/StarXYZHub/main/OrionUi.lua')))()

local Window = OrionLib:MakeWindow({Name = "Star XYZ Hub | Key System", HidePremium = false, IntroText = "Star XYZ Hub | Community", Icon = "14878105537"})

local Web1s = Window:MakeTab({
    Name = "Web1s",
    Icon = "rbxassetid://14913479681",
    PremiumOnly = false
})

local LinkVertise = Window:MakeTab({
    Name = "LinkVertise",
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
            OrionLib:Destroy()
            wait(1)
            loadscript()
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


