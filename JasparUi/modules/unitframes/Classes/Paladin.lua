T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "PALADIN") then
		if C.ClassBars.Paladin == false then
			Player.HolyPower:SetAlpha(0)
		else
			local PaladinMover = CreateFrame("Frame", "Move Paladin Classbar", UIParent)
			PaladinMover:Size(252, 12)
			PaladinMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 2)
			
			Player.HolyPower:ClearAllPoints()
			Player.HolyPower:SetPoint("CENTER", PaladinMover, "CENTER", 0, 0)
			Player.HolyPower:Size(192, 8)
			
			for i = 1, 5 do
				if i == 1 then
				Player.HolyPower[i]:Width(36)
				else
				Player.HolyPower[i]:Width(38)
				end
			end
			
			Movers:RegisterFrame(PaladinMover)
		end
	end
end)