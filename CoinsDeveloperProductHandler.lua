local MarketplaceService = game:GetService ("MarketplaceService")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer
local rebirthCoins = player:WaitForChild("leaderstats").RebirthCoins

--GET 1 MORE COIN
local productID1 = 1152047721
local button1 = script.Parent:WaitForChild("RebirthShopFrame"):WaitForChild("BuyCoinsButton"):WaitForChild("CoinShopFrame"):WaitForChild("Buy1RebirthCoin")

wait()

button1.MouseButton1Click:Connect(function()
	MarketplaceService:PromptProductPurchase(player, productID1)
end)

--GET 5 MORE REBIRTH COINS
local productID2 = 1152052243
local button2 = script.Parent:WaitForChild("RebirthShopFrame"):WaitForChild("BuyCoinsButton"):WaitForChild("CoinShopFrame"):WaitForChild("Buy5RebirthCoins")

button2.MouseButton1Click:Connect(function()
	MarketplaceService:PromptProductPurchase(player, productID2)
end)
--GET 15 MORE REBIRTH COINS

local productID3 = 1152052486
local button3 = script.Parent:WaitForChild("RebirthShopFrame"):WaitForChild("BuyCoinsButton"):WaitForChild("CoinShopFrame"):WaitForChild("Buy15RebirthCoins")

button3.MouseButton1Click:Connect(function()
	MarketplaceService:PromptProductPurchase(player, productID3)
end)

