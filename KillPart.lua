--Create a Part into workspace and Paste this script in here


script.Parent.Touched:Connect(function(hit)    --Creating a Touched function if the player toiuches the Part
	
	if hit.Parent:FindFirstChild("Humanoid") then -- Checking if The Parent of the Part that is hitting it (who is the player) has a Humanoid
		
		local Humanoid = hit.Parent:FindFirstChild("Humanoid") --Setting a variable for the Humanoid
		
		Humanoid.Health = 0 -- Setting the Humanoids Health to 0 so the player Dies
		
	end
	
end)


