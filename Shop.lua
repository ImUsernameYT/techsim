local frame = script.Parent
-- Create a TextLabel displaying each font
for i, font in pairs(Enum.Font:GetEnumItems()) do
	local tl = Instance.new("Shop")
	tl.Name = font.Name
	-- Set the text properties
	tl.Text = font.Name
	tl.Font = font
	-- Some rendering properties
	tl.TextSize = 24
	tl.TextXAlignment = Enum.TextXAlignment.Left
	-- Size the frame equal to the height of the text
	tl.Size = UDim2.new(1, 0, 0, tl.TextSize)
	-- Add to the parent frame
	tl.Parent = frame
end
-- Layout the frames in a list (if they aren't already)
if not frame:FindFirstChildOfClass("UIListLayout") then
	Instance.new("UIListLayout", frame)
end
