local player = game.Players.LocalPlayer

local OpenRebirthFrame = script.Parent.Parent:WaitForChild("OpenRebirthShop")
local RebirthFrame = script.Parent.Parent:WaitForChild("RebirthShopFrame")

OpenRebirthFrame.MouseButton1Up:Connect(function()
	RebirthFrame.Visible = not RebirthFrame.Visible
end)

