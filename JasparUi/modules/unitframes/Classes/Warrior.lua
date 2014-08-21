T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "WARRIOR") then
		if C.ClassBars.Warrior == false then
			Player.Totems:SetAlpha(0)
		else
			local WarriorMover = CreateFrame("Frame", "Move Warrior Classbar", UIParent)
			WarriorMover:Size(194, 12)
			WarriorMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 2)
			
			Player.Totems:ClearAllPoints()
			Player.Totems:SetPoint("CENTER", WarriorMover, "CENTER", 0, 0)
			Player.Totems:Width(192)
			
			Movers:RegisterFrame(WarriorMover)
		end
	end
end)