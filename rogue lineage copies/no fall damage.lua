local funny
funny = hookmetamethod(game,'__namecall', function(b,...)
if not checkcaller() and getnamecallmethod() == 'FireServer' and tostring(b) == 'RemoteEvent' then
return;
end
return funny(b,...)
end)
