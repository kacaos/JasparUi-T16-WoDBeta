T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)	
	-- if (Class == "DEATHKNIGHT") then
		-- Player.RunesBar:ClearAllPoints()
		-- Player.RunesBar:Point("BOTTOM", Player.Power, "TOP", 0, 3)
		-- Player.RunesBar:Size(192, 8)
	-- end
end)