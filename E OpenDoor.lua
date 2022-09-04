local ReplicatedStorage = game:GetService("ReplicatedStorage") --getting ReplicatedStorage

local BillboardGui = ReplicatedStorage:WaitForChild("BillboardGui"):Clone() --getting and cloning our Gui

local ViewPart = workspace.ViewPart -- getting our viewPart

local RunService = game:GetService("RunService") -- getting runService (a bit like while loops but bit better)

local UserInputService = game:GetService("UserInputService")--getting UserInputService

local Debounce = false -- a Debounce Variable


local MaxDistance = 15 -- our max Distance

local player = game.Players.LocalPlayer --getting the player


RunService.RenderStepped:Connect(function() -- a function that runs everytime like a while loop
	if player:DistanceFromCharacter(ViewPart.Position) < MaxDistance then -- checking if the Distance between The character and our Part is less then our MaxDistance
		BillboardGui.Parent = ViewPart -- Setting our Gui's Parent to our ViewPart
		BillboardGui.Enabled = true --Enabeling it
		
		UserInputService.InputBegan:Connect(function(input)-- a function if u press a certain key
			if input.KeyCode == Enum.KeyCode.E then -- cheking if the player clicks E
            --Debounce
				if not Debounce then
					Debounce = true
					
					ViewPart.CanCollide = false -- setting CanCollide off so u can WalkTrough it
					
					ViewPart.Transparency = 0.7 -- setting Transparency to 0.7 so u can look trough it
		
					task.wait(1.5)
					Debounce = false
				end
			end
		end)
		
	else --an else if the distance is higher than maxDistance
		BillboardGui.Enabled = false --Disabling our gui
		
		ViewPart.CanCollide = true --Setting canCollide to true so u cant walk trough it

		ViewPart.Transparency = 0 -- setting Transparency to 0 so u cant look trough it
	end
end)


--Made By (tiktok) roblox_developer420
--look at my tiktok for more tutorials
