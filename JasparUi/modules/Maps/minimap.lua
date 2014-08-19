local T, C, L = Tukui:unpack()
local Panels = T["Panels"]
local Minimap = T["Maps"].Minimap


---------------------------------------------
-- Minimap Panels
---------------------------------------------
hooksecurefunc(Minimap, "AddMinimapDataTexts", function()
-- Set the Left Datatextpanel (Bottom of Minimap for Clock)
Panels.MinimapDataTextOne:ClearAllPoints()
Panels.MinimapDataTextOne:SetPoint("CENTER", T.Maps.Minimap, "BOTTOM", 0, 10)

-- Remove the Right Datatextpanel cause we dont need it
Panels.MinimapDataTextTwo:Kill()
end)

hooksecurefunc(Minimap, "AddZoneAndCoords", function()
	--Zone
	Minimap.MinimapZone.Text:SetFont(C["Medias"].PixelFont, 12, "MONOCHROMEOUTLINE")
	Minimap.MinimapZone:StripTextures()

	--Coords
	Minimap.MinimapCoords.Text:SetFont(C["Medias"].PixelFont, 12, "MONOCHROMEOUTLINE")
	Minimap.MinimapCoords:StripTextures()
end)