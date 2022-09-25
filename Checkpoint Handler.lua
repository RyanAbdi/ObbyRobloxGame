
local checkpoints = game.workspace:WaitForChild("Checkpoints")
local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore("ObbyDataStore")

local function create_table(player)
	local player_stats = {}
	for _, stat in pairs(player.leaderstats:GetChildren()) do
		player_stats[stat.Name] = stat.Value
	end
	return player_stats	
end

local function onPlayerExit(player)
	local player_stats = create_table(player)
	local success, err = pcall(function()
		local playerUserId = player.UserId
		local data = DataStore:GetAsync(playerUserId)
		DataStore:SetAsync(playerUserId, player_stats)
	end)

	if success then
		print("Player Data successfully Saved!")
	end

	if not success then
		warn("Could not Save data")
	end	
end

local function onPlayerJoin(player)
	--Getting Data Store information

	local data = DataStore:GetAsync(player.UserId)
	
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local Stage = Instance.new("IntValue")
	Stage.Name = "Stage"
	Stage.Parent = leaderstats
	
	local rebirths = Instance.new("IntValue")
	rebirths.Name = "Rebirths"
	rebirths.Parent = leaderstats
	
	local rebirthCoins = Instance.new("IntValue")
	rebirthCoins.Name = "RebirthCoins"
	rebirthCoins.Parent = leaderstats
	
	local walkSpeedIncrease = Instance.new("IntValue")
	walkSpeedIncrease.Name = "WalkSpeedIncrease"
	walkSpeedIncrease.Parent = leaderstats
	
	local jumpHeightIncrease = Instance.new("IntValue")
	jumpHeightIncrease.Name = "JumpHeightIncrease"
	jumpHeightIncrease.Parent = leaderstats
	

	
	if data then
		if data["Stage"] > 0 then
			Stage.Value = data["Stage"]
		else
			Stage.Value = 1
		end
		rebirths.Value = data["Rebirths"]
		rebirthCoins.Value = data["RebirthCoins"]
		walkSpeedIncrease.Value = data["WalkSpeedIncrease"]
		jumpHeightIncrease.Value = data["JumpHeightIncrease"]
	else
		Stage.Value = 1
		rebirths.Value = 0
		rebirthCoins.Value = 0
		walkSpeedIncrease.Value = 0
		jumpHeightIncrease.Value = 0
	end
	
	player.CharacterAdded:Connect(function()
		local data = DataStore:GetAsync(player.UserId)
		local hum = player.Character:WaitForChild("Humanoid")
		local Stage = player:WaitForChild("leaderstats").Stage
		local hum = player.Character:WaitForChild("Humanoid")
		local walkSpeed = hum.WalkSpeed
		local jumpHeight = hum.JumpPower
	
		if walkSpeedIncrease then
			hum.WalkSpeed = 16 + walkSpeedIncrease.Value
		end
		
		if jumpHeightIncrease then
			hum.JumpPower = hum.JumpPower + jumpHeightIncrease.Value
		end
	
		hum.Touched:Connect(function(hit)
			if hit.Parent == checkpoints then
				if tonumber(hit.Name) > Stage.Value then
					Stage.Value = hit.Name
				end
			end
		end)
		player.Character:MoveTo(checkpoints[Stage.Value].Position)
	end)
end

game.Players.PlayerAdded:Connect(onPlayerJoin)
game.Players.PlayerRemoving:Connect(onPlayerExit)


