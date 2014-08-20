T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "MAGE") then
		if C.ClassBars.Mage == false then
			Player.ArcaneChargeBar:SetAlpha(0)
			
			Player.Totems:SetAlpha(0)
		else
			Player.ArcaneChargeBar:ClearAllPoints()
			Player.ArcaneChargeBar:Point("CENTER", UIParent, "CENTER", 0, -134)
			
			Player.Totems:ClearAllPoints()
			Player.Totems:Point("TOP", Player.ArcaneChargeBar, "BOTTOM", 0, -3)
		end
	end
end)