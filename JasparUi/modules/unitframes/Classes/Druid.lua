T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)	
	if (Class == "DRUID") then
		Player.DruidMana:ClearAllPoints()
		Player.DruidMana:Point("TOP", Player.Health, "BOTTOM", 0, -3)
		Player.DruidMana:Size(192, 3)
		
		if C.ClassBars.Druid == false then
			Player.EclipseBar:SetAlpha(0)
		else
			Player.EclipseBar:ClearAllPoints()
			Player.EclipseBar:Point("BOTTOM", Player.Power, "TOP", 0, 3)
			Player.EclipseBar:Size(192, 8)
			
			Player.EclipseBar.Text:ClearAllPoints()
			Player.EclipseBar.Text:Point("BOTTOM", Player.EclipseBar, "TOP", 0, 1)
			Player.EclipseBar.Text:Hide()
			
			Player.EclipseBar.SolarBar:Size(192, 8)
			
			Player.EclipseBar.LunarBar:Size(192, 8)
		end
	end
end)