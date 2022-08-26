--Made By susyynoob/@roblox_developer420


-- start by getting your tool Mesh and call it "Handle" insert it in your tool and make an animation and paste ur id in there now insert a local script into the tool

-- Making Some Variables which you should understand

local Tool = script.Parent

local Handle = Tool.Handle
local DamageAble = false -- to Check if the player can attack 
local AttackAnimation = Instance.new("Animation") -- Creating a new Animation

local ID = 10714040655 -- make the Number your ID

AttackAnimation.AnimationId = "rbxassetid://"..ID -- setting the ID 
-- Gettin the Player, Character and Humanoid

local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local Humanoid = character:WaitForChild("Humanoid")

local anim = Humanoid:LoadAnimation(AttackAnimation) -- Loading The Animation with The Humanoid

--Debounces
local Debounce = false

local HitCooldown = false



Tool.Activated:Connect(function()-- a function if the player activates/clicks the Tool
	
    --Fully Explained: when the Debouce is not true then we are gonna set it to true so it doesnt run anymore then wait a second and set it to true that does
    --that the player cant spamm attack and play the animation over and over again
    
	if not Debounce then -- checking if the Debounce Variable is false which we set to false
		Debounce = true --setting it to true so it doesnt run anymore
		
		
		anim:Play() -- playing the animation
		
		
		task.wait(1) -- waiting one second
		Debounce = false -- setting the Debounce to false so it can run again
      
      
	end
	
end)


Handle.Touched:Connect(function(hit) -- a function if an object/player Touches The Handle of the sword (hit) is the object that touches the handle.
	
	
	Tool.Activated:Connect(function() -- a function if the player activates/clicks the Tool.
		
		
		
		Tool.Unequipped:Connect(function() -- a function if the player unEquips the Tool.
			DamageAble = false -- setting The DamageAble variable to false so the player cant make dmg anymore.
		end)
		
		
		local Hum = hit.Parent:FindFirstChild("Humanoid") -- Getting the Humanoid from the player That touches the handle.
		
		if player.Name ~= hit.Parent.Name then -- Checking if the player's name is not the Players name that attacks with the tool so you cant damage urself
			
          
          
          
			if not HitCooldown then 
            
            
             --Fully Explained: when the HitCooldown is not true then we are gonna set it to true so it doesnt run anymore then wait a second and set it to true that does
             --that the player cant spamm damage on the enemy.
            
				HitCooldown = true -- setting it to true so it cant run anymore
				
				
				Hum:TakeDamage(20) -- Damaging the Humanoid from the enemy
				
				
				task.wait(1) -- waiting one second
				HitCooldown = false -- -- setting the Debounce to false so it can run again
			end
		end
	end)
end)



Tool.Equipped:Connect(function() -- a function if the player Equippes the Tool
	DamageAble = true -- setting the DamageAble Variable to true so the player can do Damage again
end)


-- and thats it Have Fun!
