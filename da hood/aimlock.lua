local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()
local aimlock = library:CreateWindow('walmart hood')
local teleports = library:CreateWindow('Teleports')
local character = library:CreateWindow('character')
local misc = library:CreateWindow('Misc')


local things ={'CHECKER_1','TeleportDetect','OneMoreTime'};
local run = game:GetService('RunService')
local pos
local speed
local aimthing
local prediction
local aimthing2
local prediction2
local Camera = game:GetService("Workspace").CurrentCamera
local LPlayer = game:GetService("Players").LocalPlayer
local uis = game:GetService('UserInputService')
local run = game:GetService('RunService')
local LMouse = LPlayer:GetMouse()


local a = aimlock:CreateFolder('aimlock')
local s = aimlock:CreateFolder('silent aim')
local t = teleports:CreateFolder('locations')
local p = teleports:CreateFolder('players')
local m = misc:CreateFolder('Misc')
local c = character:CreateFolder('LocalPlayer')

for i,v in pairs(game.CoreGui:GetChildren()) do 
    if v:IsA('ScreenGui') and (v:FindFirstChild('Window') or v:FindFirstChild("HiI'mSexyDon'tTouchMePls")) then 
        v.Name = 'wallyuiv3'
    end
end

local old
old = hookmetamethod(game,'__namecall',function(Self,...)
    local method = getnamecallmethod()
    local Args = {...}
    if not checkcaller() and Self == 'MainEvent' and table.find(things,Args[1]) and method == 'FireServer' then
        return;
    elseif not checkcaller() and getfenv(2).crash then
        hookfunction(getfenv(2).crash,function() end)
    end
    return old(Self,...)
end)

a:Button("aimlock (right click)",function()
-- da hood aimlock.lua
-- NOT MINE CREDITS HERE --> https://v3rmillion.net/showthread.php?tid=1104739
local function GetClosestPlayer()
    local ClosestDistance, ClosestPlayer = math.huge, nil;
    for _,Player in next, game:GetService("Players"):GetPlayers() do
        if Player ~= LPlayer and Player.Character.BodyEffects["K.O"].Value ~= true then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 then
                local ScreenPosition, IsVisibleOnViewPort = Camera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewPort then
                    local MDistance = (Vector2.new(LMouse.X, LMouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude
                    if MDistance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = MDistance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end

uis.InputBegan:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 and GetClosestPlayer().Character then 
    local target = GetClosestPlayer().Character[aimthing]
        getgenv().loop = run.Stepped:Connect(function()
            Camera.CFrame = CFrame.new(Camera.CFrame.Position,target.Position + target.Velocity / prediction)
        end)
    end
end)

uis.InputEnded:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then 
        loop:Disconnect()
    end
end)
end)

a:Box("prediction","number",function(value)
    prediction = value
end)

a:Dropdown("target",{"Head","HumanoidRootPart",'RightFoot','LeftFoot'},true,function(mob)
    aimthing = mob
end)

s:Button("silent aim",function()
-- NOT MINE CREDITS HERE --> https://v3rmillion.net/showthread.php?tid=1104739
local function GetClosestPlayer()
    local ClosestDistance, ClosestPlayer = math.huge, nil;
    for _,Player in next, game:GetService("Players"):GetPlayers() do
        if Player ~= LPlayer and Player.Character.BodyEffects["K.O"].Value ~= true then
            local Character = Player.Character
            if Character and Character.Humanoid.Health > 1 then
                local ScreenPosition, IsVisibleOnViewPort = Camera:WorldToViewportPoint(Character.HumanoidRootPart.Position)
                if IsVisibleOnViewPort then
                    local MDistance = (Vector2.new(LMouse.X, LMouse.Y) - Vector2.new(ScreenPosition.X, ScreenPosition.Y)).Magnitude
                    if MDistance < ClosestDistance then
                        ClosestPlayer = Player
                        ClosestDistance = MDistance
                    end
                end
            end
        end
    end
    return ClosestPlayer, ClosestDistance
end

local MouseIndexes = {"Hit", "Target"}
local __index
__index = hookmetamethod(game, "__index", function(t, k)
    if (not checkcaller() and t:IsA("Mouse") and table.find(MouseIndexes, k)) then
        local TargetPart = GetClosestPlayer().Character[aimthing2]
        local predict = TargetPart.CFrame + TargetPart.Velocity / prediction2
        return (k == "Hit" and predict or TargetPart) 
    end
    return __index(t, k)
end)
end)
s:Box("prediction","number",function(value)
    prediction2 = value
end)

s:Dropdown("target",{"Head","HumanoidRootPart",'RightFoot','LeftFoot'},true,function(mob)
    aimthing2 = mob
end)


t:Button("guns 1",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.432983, 22.7864952, -735.774841, -0.141236693, -4.57313405e-08, -0.98997587, -2.96320337e-08, 1, -4.19668922e-08, 0.98997587, 2.34077326e-08, -0.141236693)
end)

t:Button("guns 2",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(482.335785, 62.4840088, -623.657043, -0.778216422, -4.70375028e-09, 0.627996147, 9.70300174e-10, 1, 8.69249561e-09, -0.627996147, 7.37398764e-09, -0.778216422)
end)


t:Button("admin base (guns)",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-859.43988, -32.6492119, -523.03363, 0.988828182, -5.42495959e-09, -0.149059907, 4.4203583e-09, 1, -7.07088077e-09, 0.149059907, 6.33298791e-09, 0.988828182)
end)

t:Button("safezone",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.690262, 38.2499847, 200048.312, -0.997226417, -1.50707447e-10, 0.074427627, -4.37287928e-10, 1, -3.83416277e-09, -0.074427627, -3.85607457e-09, -0.997226417)
end)

t:Button("bank",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-442.681061, 38.9943542, -287.689056, 0.432968676, 4.56852938e-08, 0.90140897, -1.27910917e-08, 1, -4.4538222e-08, -0.90140897, 7.75365017e-09, 0.432968676)
end)

t:Button("da theatre (pvp area)",function()
    game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1004.85553, 80.3063126, -219.818954, 0.943748295, 1.34846009e-10, 0.330664784, 5.79195358e-10, 1, -2.06088058e-09, -0.330664784, 2.13647211e-09, 0.943748295)
end)

c:Toggle("cframe walkspeed",function(bool)
    if bool == true then 
        getgenv().hello = run.Heartbeat:Connect(function()
            game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame + game:GetService('Players').LocalPlayer.Character.Humanoid.MoveDirection * speed
            end) 
        elseif bool == false then 
    hello:Disconnect()
  end
end)

c:Slider("speed slider",{
    min = 0; -- min value of the slider
    max = 5; -- max value of the slider
    precise = true; -- max 2 decimals
},function(value)
    speed = value
end)

p:Box("plr tp \n(type full name)","string",function(value)
    pcall(function()
        game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService('Players')[value].Character.HumanoidRootPart.CFrame * CFrame.new(0,5,0)
    end)
end)

p:Box("view player \n(type full name)","string",function(value)
    pcall(function()
        Camera.CameraSubject = game:GetService('Players')[value].Character.Humanoid
    end)
end)

p:Button("unview plr",function()
    pcall(function()
        Camera.CameraSubject = game:GetService('Players').LocalPlayer.Character.Humanoid
    end)
end)

m:Button("unlock chat",function()
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatChannelParentFrame.Visible = true
    game:GetService('Players').LocalPlayer.PlayerGui.Chat.Frame.ChatBarParentFrame.Position = UDim2.new(0, 0, 1, -45)
end)

m:Bind("toggle gui (Z)",Enum.KeyCode.Z,function() --Default bind
    if game.CoreGui:FindFirstChild('wallyuiv3') then
        game.CoreGui:WaitForChild('wallyuiv3').Parent = game.Teams
            else 
        game.Teams:WaitForChild('wallyuiv3').Parent = game.CoreGui
    end
end)
