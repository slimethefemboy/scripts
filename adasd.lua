local plr = game:GetService("Players").LocalPlayer
local run = game:GetService("RunService")

getgenv().t = 0.77 -- default
getgenv().size = 50  -- I recommend keeping this below 50

local __namecall
__namecall = hookmetamethod(game,'__namecall', function(Self,...)
    if not checkcaller() and Self == plr and getnamecallmethod() == 'Kick' then
        return rconsoleprint('me when clientside kicks\n')
    end
    return __namecall(Self,...)
end)

local __index
__index = hookmetamethod(game,'__index',function(Noahh,Canyon)
    if not checkcaller() and tostring(Noahh) == 'Hitbox' and Canyon == 'Size' then
        return Vector3.new(4.5, 7, 4.5)
    elseif not checkcaller() and tostring(Noahh) == 'Hitbox' and Canyon == 'Transparency' then
        return 1
    end
    return __index(Noahh,Canyon)
end)

run.RenderStepped:Connect(function()
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name ~= plr.Name  then
            v.Character.Hitbox.Size = Vector3.new(size,size,size)
            v.Character.Hitbox.Transparency = t
            v.Character.Hitbox.CanCollide = false
        end
    end
end)