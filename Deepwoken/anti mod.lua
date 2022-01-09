loadstring(game:HttpGet('https://raw.githubusercontent.com/slimethefemboy/scripts/main/Deepwoken/modslist'))()
local plrs = game:GetService('Players')
local lp = plrs.LocalPlayer

-- kick function
local kick = function(reason)
    return lp:kick(reason)
end

-- check if mod is currently in game
for i,v in pairs(plrs:GetChildren()) do 
    if table.find(mods,v.UserId) then 
        kick('potential mod found')
    end
end

-- kick if mod joins game
plrs.PlayerAdded:Connect(function(r)
    if table.find(mods,r.UserId) then 
        kick('potential mod joined')
    end
end)
