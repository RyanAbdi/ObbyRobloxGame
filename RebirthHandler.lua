local replicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent = replicatedStorage:WaitForChild("RebirthEvent")
local debounce = true
local stagesRequired = 65
local checkpoints = workspace:WaitForChild("Checkpoints")

local function buttonPressed(player)
	local pStats = player:WaitForChild("leaderstats")
	local pGui = player:WaitForChild("PlayerGui")
	local pRebirthButton = pGui:WaitForChild("Buttons"):FindFirstChild("Rebirth")
	local Stage = pStats:FindFirstChild("Stage")
	local rebirthCoins = pStats:FindFirstChild("RebirthCoins")

	
	local pRebirths = pStats:FindFirstChild("Rebirths")
	if debounce and Stage.Value >= stagesRequired then
		debounce = false
		--Allows player to Rebirth
		local hum = player.Character:FindFirstChild("Humanoid")
		player.Character:MoveTo(checkpoints[1].Position)
		wait(0.1)
		Stage.Value = 1
		pRebirths.Value = pRebirths.Value + 1
		pRebirthButton.Text = "Stages Required: "..tostring(stagesRequired)
		rebirthCoins.Value = rebirthCoins.Value + 1
				
		
	else
		debounce = false
		--Display Points Required 
		pRebirthButton.Text = "Stages Required: "..tostring(stagesRequired)
	end
	wait(3)
	debounce = true
end

buttonEvent.OnServerEvent:Connect(buttonPressed)
