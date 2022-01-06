-- stefanuk12 helped with __newindex hook
local balls = {
    WalkSpeed = 16,
    JumpPower = 50
}
local hum = game:GetService('Players').LocalPlayer.Character.Humanoid
local old
old = hookmetamethod(game,'__index',function(a,b)
    if not checkcaller() and a == hum and (b == 'Walkspeed' or b == 'JumpPower') then
        return balls[b]
    end
    return old(a,b)
end)

local new
new = hookmetamethod(game,'__newindex',function(a,b,c)
    if not checkcaller() and a == hum and (b == 'WalkSpeed' or b == 'JumpPower') then
        balls[b] = c; return
    end
    return new(a,b,c)
end)
