local T, C, L = Tukui:unpack()
local Panels = T["Panels"]
local Minimap = T["Maps"].Minimap

function JasparUI:AddNewMinimap()
---------------------------------------------
-- Minimap Panels
---------------------------------------------

-- Set the Left Datatextpanel (Bottom of Minimap for Clock)
Panels.MinimapDataTextOne:ClearAllPoints()
Panels.MinimapDataTextOne:SetPoint("CENTER", T.Maps.Minimap, "BOTTOM", 0, 10)

-- Remove the Right Datatextpanel cause we dont need it
Panels.MinimapDataTextTwo:Kill()

Minimap.MinimapZone:StripTextures()
Minimap.MinimapCoords:StripTextures()
end