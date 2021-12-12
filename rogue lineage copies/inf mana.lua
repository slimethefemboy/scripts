local mana = game:GetService('Players').LocalPlayer.Character.Stats.Mana
local funny

funny = hookmetamethod(game,'__index', function(a,b)
    if not checkcaller() and tostring(a) == mana and b == 'Value' then
        return 100
    end
    return funny(a,b)
end)

while task.wait() do
    mana.Value = 9e9
end
