local MarketplaceService = game:GetService ("MarketplaceService")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer

local productID = 1150250151

local button = script.Parent.TextButton

wait()

local Stage = player:WaitForChild("leaderstats"):FindFirstChild("Stage")	
button.MouseButton1Click:Connect(function()
	print("You have clicked the button")
	if Stage.Value then
		if Stage.Value == 69 or Stage.Value > 69 then
			return
		end
	else
	end
	MarketplaceService:PromptProductPurchase(player, productID)
end)
