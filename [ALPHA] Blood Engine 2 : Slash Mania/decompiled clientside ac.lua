-- for anyone wondering what all the anti cheat bypass bypasses
local l__Character__1 = game.Players.LocalPlayer.Character;
while true do
	wait();
	if l__Character__1 ~= nil then
		break;
	end;
end;
local l__-__2 = script.Parent:FindFirstChild("'(-)'\239\191\189\239\191\189");
local u1 = { 0, 3, 5, 7, 8, 10, 12, 15 };
l__Character__1.DescendantRemoving:Connect(function(p1)
	if p1.Name == "Ragdolled" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
	if p1.Name == "Ragdoll" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
	if p1.Name == "\239\191\189\239\191\189\239\191\189\239\191\189" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
	if p1.Name == "'(-)'\239\191\189\239\191\189" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
	if p1.Name == "Stamina" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
	if p1.Name == "Humanoid" then
		game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
	end;
end);
l__Character__1:FindFirstChild("Ragdolled"):GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Ragdolled"):GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__-__2.Parent:GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__-__2.Parent:GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__-__2:GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__-__2:GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__-__2:GetPropertyChangedSignal("Disabled"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Ragdoll"):GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Ragdoll"):GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Humanoid"):GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Stamina"):GetPropertyChangedSignal("Name"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
l__Character__1:FindFirstChild("Stamina"):GetPropertyChangedSignal("Parent"):Connect(function()
	game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
end);
local function u2()
	if not l__Character__1:FindFirstChild("HumanoidRootPart") then
		return;
	end;
	if l__Character__1:FindFirstChild("Ragdolled").Value then
		return;
	end;
	local l__Position__3 = l__Character__1.HumanoidRootPart.Position;
	local l__Humanoid__4 = l__Character__1:FindFirstChild("Humanoid");
	local u5 = l__Character__1.Humanoid:GetState();
	delay(1, function()
		if (l__Character__1.HumanoidRootPart.Position - l__Position__3).Magnitude >= 30 then
			wait(0.1);
			if table.find(u1, l__Humanoid__4:GetState().Value) or table.find(u1, u5.Value) then
				return;
			end;
			if l__Humanoid__4.FloorMaterial ~= Enum.Material.Air or l__Humanoid__4.Health == 0 then
				return;
			end;
			if l__Character__1:FindFirstChild("Ragdolled").Value then
				return;
			end;
			game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: Client RootPart. An Error Has Occured.");
		end;
	end);
end;
coroutine.resume(coroutine.create(function()
	while wait() do
		u2();
		if l__Character__1.Humanoid.WalkSpeed >= 30 then
			game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
		end;
		if l__Character__1.Humanoid.Health >= 150 then
			game.Players:FindFirstChild(l__Character__1.Name):Kick("Player-To-Client: An Error Has Occured.");
		end;	
	end;
end));
