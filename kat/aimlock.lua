-- aim key is right click

getgenv().aimthing = 'Head'
local Camera = game:GetService("Workspace").CurrentCamera
local LPlayer = game:GetService("Players").LocalPlayer
local uis = game:GetService('UserInputService')
local run = game:GetService('RunService')
local LMouse = LPlayer:GetMouse()

-- NOT MINE CREDITS HERE --> https://v3rmillion.net/showthread.php?tid=1104739
local function GetClosestPlayer()
    local ClosestDistance, ClosestPlayer = math.huge, nil;
    for _,Player in next, game:GetService("Players"):GetPlayers() do
        if Player ~= LPlayer then
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
            Camera.CFrame = CFrame.new(Camera.CFrame.p,target.Position)
        end)
    end
end)

uis.InputEnded:Connect(function(key)
    if key.UserInputType == Enum.UserInputType.MouseButton2 then 
        loop:Disconnect()
    end
end)

print('enjoy :3')
