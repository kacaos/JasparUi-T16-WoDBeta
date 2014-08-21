T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "SHAMAN") then
		if C.ClassBars.Shaman == false then
			Player.Totems:SetAlpha(0)
		else
			local TotemMover = CreateFrame("Frame", "Move Totembar", UIParent)
			TotemMover:Size(252, 12)
			TotemMover:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 75)
			
			Player.Totems:ClearAllPoints()
			Player.Totems:Point("CENTER", TotemMover, "CENTER", 0, 0)
			
			Movers:RegisterFrame(TotemMover)
		end
	end
end)