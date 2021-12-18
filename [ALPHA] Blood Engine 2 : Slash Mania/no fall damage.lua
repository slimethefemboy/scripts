game:GetService('Players').LocalPlayer.Character.FallDamage:Destroy()

game:GetService('Players').LocalPlayer.CharacterAdded:Connect(function()
wait(2)
game:GetService('Players').LocalPlayer.Character.FallDamage:Destroy()
end)
