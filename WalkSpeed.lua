local replicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent = replicatedStorage:WaitForChild("WalkSpeedEvent")
local button = script.Parent

button.MouseButton1Click:Connect(function()
	buttonEvent:FireServer()
end)
