local web = ''

if not syn.request then 
 return;
end

repeat wait() until game:IsLoaded()


  
local plrs = game:GetService('Players')
local lp = plrs.LocalPlayer
local character = lp.Character
local humanoid = character.Humanoid
local pg = lp.PlayerGui
local Main = pg.MainScreenGui
local money = Main.MoneyText

while true do
local data = {
    ["embeds"] = {
        {
        ["title"] = "da hood stats",
        ["description"] = "User: " .. lp.Name .. '\n' .. 'money amount: ' .. money.text .. '\n' .. 'Player health: ' .. math.floor(humanoid.Health)  ,
        ["type"] = "rich",
        ["color"] = 0,
        }
    }
}

local req = syn.request({

Url = web,

Method = "POST",

Headers = {
["content-type"] = "application/json" 
},

Body = game:GetService("HttpService"):JSONEncode(data)
    
})
task.wait(15)
end
