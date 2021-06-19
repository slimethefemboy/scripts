-- put in autoexec
if game.PlaceId == 621129760 then
repeat wait() until game.Players.LocalPlayer

local run = game:GetService("RunService")
local plrs = game:GetService("Players")
local lp = plrs.LocalPlayer
local teleport = game:GetService("TeleportService")

-- rejoin if kicked
game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
 if child.Name == "ErrorPrompt" then 
  teleport:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)    
 end
end)

-- autofarm
run.RenderStepped:Connect(function()
 for i,v in pairs(game.Players:GetChildren()) do
  local character = lp.Character
   local backpack = lp.Backpack
    local target = lp.PlayerGui.GameUI.HUD.TargetUI.TargetHolder.TargetName    
     local root = character.HumanoidRootPart
      if target.Text == v.Name then 
       root.CFrame = v.Character.HumanoidRootPart.CFrame  * CFrame.new(0,0,2)
       mouse1click()
      for _,v2 in pairs(backpack:GetChildren()) do 
     if v2.Name == "Knife" then 
    v2.Parent = character
   end
  end
 end
end
end)
end
