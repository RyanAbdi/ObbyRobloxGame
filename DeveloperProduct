local MarketplaceService = game:GetService("MarketplaceService")
local productID = 1150250151
local DataStoreService = game:GetService("DataStoreService")
local DataStore = DataStoreService:GetDataStore("ObbyDataStore")
local players = game:GetService("Players")



local function processReceipt(receiptInfo)
	local player = players:GetPlayerByUserId(receiptInfo.PlayerId)
	local Stage = player:WaitForChild("leaderstats").Stage
	local data = DataStore:GetAsync(player.UserId.."-Stage")
	local rebirthCoins = player:WaitForChild("leaderstats").RebirthCoins
	local dataRebirthCoins = DataStore:GetAsync(player.UserId.."-RebirthCoins")
	
	if receiptInfo.ProductId == 1150250151 then
		if not player then
			--Player probably left the game
			--If they come back, the callback will be called again
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end
		
		if player then
			if Stage.Value == 69 or Stage.Value > 69 then
				Stage.Value = 69 
				print("Your purchase has been cancelled")
				return Enum.ProductPurchaseDecision.NotProcessedYet
			end
			Stage.Value = Stage.Value + 1
			print("Purchase success")
			local character = player.Character
			local hum = character:WaitForChild("Humanoid")
			hum.Health = 0
		end
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
	
	if receiptInfo.ProductId == 1152047721 then
		if not player then
			--Player probably left the game
			--If they come back, the callback will be called again
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end

		if player then
			rebirthCoins.Value = rebirthCoins.Value + 1
			print("Purchase success")
		end
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
	
	if receiptInfo.ProductId == 1152052243 then
		if not player then
			--Player probably left the game
			--If they come back, the callback will be called again
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end

		if player then
			rebirthCoins.Value = rebirthCoins.Value + 5
			print("Purchase success")
		end
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
	
	if receiptInfo.ProductId == 1152052486 then
		if not player then
			--Player probably left the game
			--If they come back, the callback will be called again
			return Enum.ProductPurchaseDecision.NotProcessedYet
		end

		if player then
			rebirthCoins.Value = rebirthCoins.Value + 15
			print("Purchase success")
		end
		return Enum.ProductPurchaseDecision.PurchaseGranted
	end
	
end
--What it actually does

MarketplaceService.ProcessReceipt = processReceipt




