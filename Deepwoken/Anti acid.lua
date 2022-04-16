local __namecall
__namecall = hookmetamethod(game,'__namecall', function(b,...)
    local method = getnamecallmethod()
    if not checkcaller() and b == 'AcidCheck' and method == 'FireServer' then
        return;
    end
    return __namecall(b,...)
end)
