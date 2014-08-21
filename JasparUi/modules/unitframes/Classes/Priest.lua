T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "PRIEST") then
		if C.ClassBars.Priest == false then
			Player.ShadowOrbsBar:SetAlpha(0)
		else
			local PriestMover = CreateFrame("Frame", "Move Priest Classbar", UIParent)
			PriestMover:Size(194, 12)
			PriestMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 2)
			
			Player.ShadowOrbsBar:ClearAllPoints()
			Player.ShadowOrbsBar:SetPoint("CENTER", PriestMover, "CENTER", 0, 0)
			Player.ShadowOrbsBar:Width(192)
			
			for i = 1, 5 do
				if i == 1 then
					Player.ShadowOrbsBar[i]:Width(36)
				else
					Player.ShadowOrbsBar[i]:Width(38)
				end
			end
			
			Player.Totems:ClearAllPoints()
			Player.Totems:SetPoint("CENTER", PriestMover, "CENTER", 0, 0)
			Player.Totems:Width(192)
			
			Movers:RegisterFrame(PriestMover)
		end
	end
end)