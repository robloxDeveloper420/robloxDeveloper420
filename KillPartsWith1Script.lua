-- Made By (tiktok) roblox_Developer420

--First Create ur KillParts and name them KillParts and Group them in a model then insert a script into ServerScriptService




for i, KillPart in pairs(workspace.KillParts:GetChildren()) do -- first we gonna make a ForLoop where we gonna get The KillParts in out Model.
	
	if KillPart.Name == "KillPart" then -- Here we gonna chek if the name is KillPart so we dont Get anything else in our model if something else was in there.
		
		KillPart.Touched:Connect(function(hit)-- Then we are gonna make a Touched Event if u touch The KillParts with an (hit) that is The Object that is touching The Part.
			
			if hit.Parent:FindFirstChild("Humanoid") then -- were gonna check if we find The Humanoid when the player touches the part.
				
				local Humanoid = hit.Parent:FindFirstChild("Humanoid") -- making a variable for the humanid.
				
				Humanoid.Health = 0 -- Setting The humanoids Health to 0 to kill The Player.
				
			end
			
		end)
		
	end
	
end

--Thats it Have Fun and Follow for more :)
