local lp = game:GetService("Players").LocalPlayer
local filter
filter = hookmetamethod(game,'__namecall', function(b,...)
local Args = {...}
if not checkcaller() and getnamecallmethod() == 'InvokeServer' and tostring(b) == 'Filter' then 
return Args[1]
end
return filter(b,...)
end)
