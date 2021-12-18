local plr = game:GetService("Players").LocalPlayer
local run = game:GetService("RunService")

getgenv().t = 0.77 -- default
getgenv().size = 10 -- I recommend keeping it at this I haven't tried going higher but you can if you want ¯\_(ツ)_/¯

local hit
hit = hookmetamethod(game,'__index', function(a,b)
    if not checkcaller() and a == 'HumanoidRootPart' and tostring(b) == 'Size' then
        return Vector3.new(2, 2, 1)
    elseif not checkcaller() and a == 'HumanoidRootPart' and tostring(b) == 'Transparency' then
        return 1
    end
    return hit(a,b)
end)


run.RenderStepped:Connect(function()
 for i,v in pairs(game.Players:GetPlayers()) do 
   if v.Name ~= plr.Name  then
   v.Character['HumanoidRootPart'].Size = Vector3.new(size,size,size)
   v.Character['HumanoidRootPart'].Transparency = t
   v.Character['HumanoidRootPart'].CanCollide = false
  end
 end
end)
