-- Made By (tiktok) @roblox_Developer420



--start by Getting youre Gun Model and inserting it into ur Tool then Create a Part and Make the size like a Bullet and name it BUllet and move it to ReplicatedStorage





local ReplicatedStorage = game:GetService("ReplicatedStorage") -- Getting ReplicatedStorage

local Bullet = ReplicatedStorage:WaitForChild("Bullet") -- getting our Bullet from ReplicatedStorage

local tool = script.Parent --  getting our tool

local Handle = tool.Handle --  getting our Handle from the tool


local player = game.Players.LocalPlayer -- getting the player

local mouse = player:GetMouse() -- getting the Players Mouse


-- making 2 Debounce variables
local Debounce = false

local SHootCooldown = false


tool.Activated:Connect(function()    -- a function if the player CLicks/activates The Tool
    -- Creating a Debounce

     --Fully Explained: when the Debouce is not true then we are gonna set it to true so it doesnt run anymore then wait a second and set it to true that does
    --that the player cant spamm bullets that would be too op
    
    
	if not Debounce then --checking if the Debounce Variable is false which we set to false
		Debounce = true -- setting it to true so it doesnt run anymore
		
		local ClonedBullet = Bullet:Clone() --Cloning our Bullet so there are more bullets u can shoot
      --Customizing
		ClonedBullet.CanCollide = true
		ClonedBullet.Anchored = false
		ClonedBullet.CFrame = tool.Handle.CFrame --Setting the Bullets CFrame/Position to The Handles CFrame/Position so the Bullets come out of The Gun
	
      --if a BodyVelocity is in a Part etc. then u can costomize it and then it mooves to a sertain way 
		local BodyVelocity = Instance.new("BodyVelocity") -- Creating a BodyVelocity
		BodyVelocity.P = Vector3.new(10000, 10000,10000) -- setting the Range to 10000 so the Bullet can go wide
		BodyVelocity.Velocity = mouse.Hit.LookVector * 100 --Setting the Velocity to the mouse's LookVector so The Bullet Shoots where youre mouse is at.
		
		BodyVelocity.Parent = ClonedBullet -- setting The BodyVelocity Parent To The ClonedBullet so it can Shoot
		
		ClonedBullet.Parent = workspace --setting The ClonedBullets Parent To The Workspace yoou can see The bullet
		
		
		ClonedBullet.Touched:Connect(function(hit)-- a function if The ClonedBullet is touched with an(hit) that is The Object that touches The Bullet
			if hit.Parent:FindFirstChild("Humanoid") then -- checking if It Finds A Humanoid
				local Hum = hit.Parent:FindFirstChild("Humanoid") -- Making a Variable for the Humanoid That touches The Bullet
				
				
				if player.Name ~= hit.Parent.Name then -- checking if the players Name is not The player Who gets Shot so you cant damage urself
					
              --Creating a Debounce Like Before
              
					if not SHootCooldown then
						SHootCooldown = true

						Hum:TakeDamage(25) -- The Enemy gets Damage which u can choose how much


						task.wait(.5)
						SHootCooldown = false
					end
					
				end
			end
		end)
		
		task.wait(1)
		Debounce = false
	end
end)

--Thats it Have Fun!
