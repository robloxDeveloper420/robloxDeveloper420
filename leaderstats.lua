-- start by creating a script inside of serverScriptService

game.Players.PlayerAdded:Connect(function(player) -- Creating a function if the player Joins the game and calling the (player)
	
	local leaderstats = Instance.new("Folder", player) -- Making a Variable witch Creates a Foler inside of the player. call the Variable however you want
	leaderstats.Name = "leaderstats" -- customizing the Name of the leaderstats
	
	local currency = Instance.new("NumberValue", leaderstats) -- making another Variable for the currency you wanna make and creating an Number Value for the Amount of currency you have in the leaderstats Folder
	currency.Name = "currency" --Making the name to currency again Customize it however you like
	currency.Value = 0 --setting the Value to 0 if the player joins
end)
