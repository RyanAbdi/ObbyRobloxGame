local replicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent1 = replicatedStorage:WaitForChild("WalkSpeedEvent")
local coinsRequired1 = 1
local debounce1 = true



--Walk Speed function
local function buttonPressed1(player)
	local pStats = player:WaitForChild("leaderstats")
	local walkSpeedIncrease = pStats:FindFirstChild("WalkSpeedIncrease")
	local rebirthCoins = pStats:FindFirstChild("RebirthCoins")
	local pGui = player:WaitForChild("PlayerGui")
	local pWalkSpeedButton = pGui:WaitForChild("Buttons"):FindFirstChild("RebirthShopFrame"):FindFirstChild("WalkSpeedButton")
	local hum = player.Character:WaitForChild("Humanoid")

	if debounce1 and rebirthCoins.Value >= coinsRequired1 then
		debounce1 = false 
		walkSpeedIncrease.Value = walkSpeedIncrease.Value + 1
		hum.WalkSpeed = 16 + walkSpeedIncrease.Value
		rebirthCoins.Value = rebirthCoins.Value - coinsRequired1
		pGui.Buttons.RebirthShopFrame.WalkSpeedText.Text = ("WALK SPEED: ".. hum.walkSpeed)
	else 
		debounce1 = false
		pGui.Buttons.RebirthShopFrame.WalkSpeedText.Text = ("WALK SPEED: ".. hum.walkSpeed)
	end
	wait(0.3)
	debounce1 = true
	
end

buttonEvent1.OnServerEvent:Connect(buttonPressed1)

--Jumping Increase Button

local buttonEvent2 = replicatedStorage:WaitForChild("JumpHeightEvent")
local coinsRequired2 = 1
local debounce2 = true

local function buttonPressed2(player)
	local pStats = player:WaitForChild("leaderstats")
	local jumpHeightIncrease = pStats:FindFirstChild("JumpHeightIncrease")
	local rebirthCoins = pStats:FindFirstChild("RebirthCoins")
	local pGui = player:WaitForChild("PlayerGui")
	local hum = player.Character:WaitForChild("Humanoid")
	
	if debounce2 and rebirthCoins.Value >= coinsRequired2 then
		debounce2 = false
		jumpHeightIncrease.Value = jumpHeightIncrease.Value + 2
		hum.JumpPower = 50 + jumpHeightIncrease.Value
		rebirthCoins.Value = rebirthCoins.Value - coinsRequired2
		pGui.Buttons.RebirthShopFrame.JumpHeightText.Text = ("JUMP HEIGHT: ".. hum.JumpPower)
	else
		debounce2 = false
		pGui.Buttons.RebirthShopFrame.JumpHeightText.Text = ("JUMP HEIGHT: ".. hum.JumpPower)
	end
	wait(0.3)
	debounce2 = true
end

buttonEvent2.OnServerEvent:Connect(buttonPressed2)	
