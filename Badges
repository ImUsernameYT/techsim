local BadgeService = game:GetService("BadgeService")
 
local function awardBadge(who joins, 2124960385)
	-- Fetch badge information
	local success, badgeInfo = pcall(function()
		return BadgeService:GetBadgeInfoAsync(2124960385.)
	end)
	
	if success then
		-- Confirm that badge can be awarded
		if badgeInfo.IsEnabled then
			-- Award badge
			local success, result = pcall(function()
				return BadgeService:AwardBadge(who joins, 2124960385)
			end)
			
			if not success then
				-- the AwardBadge function threw an error
				warn("Error while awarding badge:", result)
			elseif not result then
				-- the AwardBadge function did not award a badge
				warn("Failed to award badge.")
			end
		end
	else
		warn("Error while fetching badge info: " .. badgeInfo)
	end
end
