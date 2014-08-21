T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)	
	if (Class == "DEATHKNIGHT") then
		if C.ClassBars.Deathknight == false then
			Player.Runes:SetAlpha(0)
		else
			local DKMover = CreateFrame("Frame", "Move Deathknight Classbar", UIParent)
			DKMover:Size(194, 12)
			DKMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 2)
			
			Player.Runes:ClearAllPoints()
			Player.Runes:Point("CENTER", DKMover, "CENTER", 0, 0)
			Player.Runes:Size(192, 8)
			
			for i = 1, 6 do
				if i == 1 then
					Player.Runes[i]:Width(32)
				else
					Player.Runes[i]:Width(31)
				end
			end
			
			Movers:RegisterFrame(DKMover)
		end
	end
end)