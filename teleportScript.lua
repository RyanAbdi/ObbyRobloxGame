
function onTouch(part)
	if part.Parent.Humanoid ~=nil then
		part.Parent:MoveTo(script.Parent.Parent.Tele2.Position)
		script.Parent.Parent.Tele2.Script.Disabled = true 
		wait(2)
		script.Parent.Parent.Tele2.Script.Disabled = false
	end
end
script.Parent.Touched:connect(onTouch)
