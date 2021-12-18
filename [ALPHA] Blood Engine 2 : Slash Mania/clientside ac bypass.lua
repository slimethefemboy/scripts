local lp = game.Players.LocalPlayer
local why
why = hookmetamethod(game,'__namecall', function(Self,...)
    if not checkcaller() and Self == lp and getnamecallmethod() == 'Kick' then
        return;
    end
    return why(Self,...)
end)
