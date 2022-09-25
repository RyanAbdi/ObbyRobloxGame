wait()
local player = game.Players.LocalPlayer
local Stage = player:WaitForChild("leaderstats").Stage
local checkpoints = game.Workspace.Checkpoints
local char = player.Character 
local hum = char:WaitForChild("Humanoid")



hum.Touched:Connect(function(hit)
	if hit.Parent == checkpoints then
		script.Parent.TextBox.Text = ("Stage: ".. Stage.Value)
	else
		script.Parent.TextBox.Text = ("Stage: ".. Stage.Value)
	end
	end)
