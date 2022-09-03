--made by (tiktok) roblox_developer420


--First Start by Creating ur parts and making them in a model and call it howbu like then Name the parts all the same and anchor them



local TweenService = game:GetService("TweenService") --getting The TweenService so we can move The Part Smoothly



for i, testpart in pairs(workspace.Test:GetChildren()) do -- making a for loop and getting The Parts from out model we made
	
	if testpart.Name == "TestPart" then --checking if the Parts name is testPart or how you called youre parts
		
		local clickDetector = Instance.new("ClickDetector", testpart) -- Creating a clickDetector inside of our parts
		
		local Info1 = TweenInfo.new( -- creating a tweenInfo for out part
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		
		
		local Goal1 = {Position = testpart.Position + Vector3.new(0, 5, 0)} -- creating a goal so where the part has to go. for here we set the position afew studs up
		
		
		local Info2 = TweenInfo.new( -- another info if u want u can delete this info and use Info1 instead but you dont need to
			1,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.Out,
			0,
			false,
			0
		)
		
		local Goal2 = {Position = testpart.Position} -- creating another Goal but setting the Position to the Old Position of our part so it can go down
		
		
		
		clickDetector.MouseClick:Connect(function() -- a function if The Parts Clickdetector is clicked
        -- 2 varables where we gonna cReate our tween in the Bracets u need to insert The Part you wanna move youire Info and ur goal
			local UpTween = TweenService:Create(testpart, Info1, Goal1)
			local DownTween = TweenService:Create(testpart, Info2, Goal2)
			local Debounce = false -- a debounce variable
			
			-- creating a debounce wherte we looking if our Variable is false which we did and setting it to true waiting 1 second and setting it to false so basicly a 1 second delay
			if not Debounce then
				Debounce = true
				-- playing out tweens.
				UpTween:Play()
				task.wait(1)
				DownTween:Play()
				
				
				task.wait(1)
				Debounce = false
			end
			
			
			
		end)
		
	end
	
end

--Thats it have fun and follow my tiktok.
