local mana = game:GetService('Players').LocalPlayer.Character.Stats.Mana
local funny

funny = hookmetamethod(game,'__index', function(a,b)
    if not checkcaller() and tostring(a) == mana and b == 'Value' then
        return 100
    end
    return funny(a,b)
end)

mana.Value = 9e9
