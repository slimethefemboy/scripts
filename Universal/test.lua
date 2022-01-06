local spoof = {
  WalkSpeed = 16,
  JumpPower = 50
};

local __index
__index = hookmetamethod(game,'__index',function(a,b)
    if not checkcaller() and a == hum and (tostring(b) == 'WalkSpeed' or tostring(b) == 'JumpPower') then
        return spoof[b]
    end
    return __index(a,b)
end)
