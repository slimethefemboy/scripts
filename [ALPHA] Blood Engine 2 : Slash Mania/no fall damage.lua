game:GetService('Players').LocalPlayer.Character.FallDamage:Destroy()

game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function()
task.wait(1.7)
game:GetService('Players').LocalPlayer.Character.FallDamage:Destroy()
end)
