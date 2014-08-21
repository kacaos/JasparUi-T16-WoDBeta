T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "MAGE") then
		if C.ClassBars.Mage == false then
			Player.ArcaneChargeBar:SetAlpha(0)
			
			Player.Totems:SetAlpha(0)
		else
			local MageMover = CreateFrame("Frame", "Move Mage Classbar", UIParent)
			MageMover:Size(194, 12)
			MageMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 2)
			
			Player.ArcaneChargeBar:ClearAllPoints()
			Player.ArcaneChargeBar:SetPoint("CENTER", MageMover, "CENTER", 0, 0)
			Player.ArcaneChargeBar:Width(192)
			
			for i = 1, 4 do
				if i == 1 then
					Player.ArcaneChargeBar[i]:Width(48)
				else
					Player.ArcaneChargeBar[i]:Width(47)
				end
			end
			
			Player.Totems:ClearAllPoints()
			Player.Totems:Point("TOP", Player.ArcaneChargeBar, "BOTTOM", 0, -3)
			Player.Totems:Width(192)
			
			for i = 1, 2 do
				if i == 1 then
					Player.Totems:Width(95)
				else
					Player.Totems:Width(95)
				end
			end
			
			Movers:RegisterFrame(MageMover)
		end
	end
end)