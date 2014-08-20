T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "SHAMAN") then
		if C.ClassBars.Shaman == false then
			Player.Totems:SetAlpha(0)
		else
			Player.Totems:ClearAllPoints()
			Player.Totems:Point("BOTTOM", UIParent, "BOTTOM", 0, 75)
		end
	end
end)