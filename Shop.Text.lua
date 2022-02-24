local textLabel = script.Parent
 
local content = {
	"Welcome to my game!";
	"Be sure to have fun!";
	"Please give suggestions!";
	"Be nice to other players!";
	"you are alowed to trade at level 15!";
	"Check out the shop!";
	"Tip:Look In Shop";
}
 
local function fadeOut()
	for i = textLabel.TextTransparency, 1, .1 do
		wait(.1)
		textLabel.TextTransparency = i
	end
end
 
local function fadeIn()
	for i = textLabel.TextTransparency, 0, -.1 do
		wait(.1)
		textLabel.TextTransparency = i
	end
end
 
local lastIndex
while true do
	-- Step 0: Fade out before doing anything 
	fadeOut()
	
	-- Step 1: pick content that wasn't the last displayed
	local index	
	repeat
		index = math.random(1, #content)
	until lastIndex ~= index
	-- Make sure we don't show the same thing next time
	lastIndex = index
	
	-- Step 2: show the content
	textLabel.Text = content[index]
	fadeIn()
	wait(2)
end
