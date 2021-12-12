local run = game:GetService('RunService').RenderStepped
local mana = game:GetService('Players').LocalPlayer.Character.Stats.Mana
local funny

funny = hookmetamethod(game,'__index', function(a,b)
    if not checkcaller() and tostring(a) == mana and b == 'Value' then
        return 100
    end
    return funny(a,b)
end)

run:Connect(function()
    mana.Value = 9e9
end)
