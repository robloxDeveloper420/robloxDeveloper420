-- Made By @roblox_developer420(tiktok)


-- Get youre NPC model and insert a script in to it


local NPChum = script.Parent:FindFirstChild("Humanoid")--Creating a Variable for the NPC Humanoid
local NPChrp = script.Parent:FindFirstChild("HumanoidRootPart") --Creating a Variable for the NPC HumanoidRootPart

local debounce = false --Creating a Debounce variable


local function FindEnemy() -- Making a Function to find The Enemy
	local AggroDistance = 100 -- The distance where the Npc can see you
	local Target = nil -- The Target That the npc follows
	
	for _, player in pairs(game.Workspace:GetChildren()) do -- A For Loop where we gonna get the Children fo workspace
		
		local HRP = player:FindFirstChild("HumanoidRootPart") ---- Creating a Variable for the players HumanoidRootPart
		
		local Hum = player:FindFirstChild("Humanoid") -- Creating a Variable for the players Humanoid
		
		if HRP and Hum and player ~= script.Parent then --Checking if it finds the HumanoidRootPart, Humanoid and if the player is not the NPC
			if (NPChrp.Position - HRP.Position).magnitude < AggroDistance then -- Chekcing if the Distance/magnitude is lower than the AggroDistane so it can follow the player
				AggroDistance = (NPChrp.Position - HRP.Position).magnitude -- then we are gonna set the AggroDistance to the Distance/magnitude of the player and NPC
				Target = HRP -- setting the Target to the players HumanoidRootPart so The NPC knows where to go
				NPChrp.Touched:Connect(function(hit) --Creating a Touched Event if the player Touches The NPc HumanoidRootPart
					if not debounce then -- Chekcing if the Debounce if false which wwe did
						debounce = true -- setting it to True so it doesnt run anymore
						
						Hum:TakeDamage(25) --The Player will take damage which u can choose how much
						
						
						task.wait(1.5) -- WAting 1.5 seconds
						debounce = false -- setting it to false so it can run again
              --Explanation: Basicly were checking if the Debounce if false which we did and setting it to true so it doesnt run anymore and waiting 1.5 seconds and
              -- and setting it to false again so it can reun again basicly we are making a delay so u cant spamm it.
					end
				end)
			end
		end
	end
	return Target --were gonna Return The Target
end


while wait(1) do -- a while loop That will run eversy second
	local HumanoidRootPart = FindEnemy() -- a variable that is the Function we made
	if HumanoidRootPart then -- Chekcing if it exists
		NPChum:MoveTo(HumanoidRootPart.Position) -- and Moving the NPC Humanoid To the Players HumanoidRootPart
		NPChum.WalkSpeed = 20 --setting the npc Humanoid WalkSpeed to 20 (dont need to do this)
	end
end

-- this is The End Dont Forget To Follow!
