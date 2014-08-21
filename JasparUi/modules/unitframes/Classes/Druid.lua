T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))
local Movers = T["Movers"]

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)	
	if (Class == "DRUID") then
		Player.DruidMana:ClearAllPoints()
		Player.DruidMana:Point("TOP", Player.Health, "BOTTOM", 0, -3)
		Player.DruidMana:Size(192, 3)
		
		if C.ClassBars.Druid == false then
			Player.EclipseBar:SetAlpha(0)
		else
			local DruidMover = CreateFrame("Frame", "Move Druid Classbar", UIParent)
			DruidMover:Size(194, 10)
			DruidMover:SetPoint("BOTTOM", Player.Power, "TOP", 0, 3)
			
			Player.EclipseBar:ClearAllPoints()
			Player.EclipseBar:Point("CENTER", DruidMover, "CENTER", 0, 0)
			Player.EclipseBar:Size(192, 8)
			
			Player.EclipseBar.Text:ClearAllPoints()
			Player.EclipseBar.Text:Point("BOTTOM", Player.EclipseBar, "TOP", 0, 1)
			Player.EclipseBar.Text:Hide()
			
			Player.EclipseBar.SolarBar:Size(192, 8)
			
			Player.EclipseBar.LunarBar:Size(192, 8)
			
			Movers:RegisterFrame(DruidMover)
		end
	end
end)