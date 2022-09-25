local replicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent = replicatedStorage:WaitForChild("RebirthEvent")
local button = script.Parent

button.MouseButton1Click:Connect(function()
	buttonEvent:FireServer()
end)
