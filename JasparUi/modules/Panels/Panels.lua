local T, C, L = Tukui:unpack()
local Panels = T["Panels"]
local MiniMaps = _G["Minimap"]

--------------------------------------------
-- Hide some Panels we dont need!
--------------------------------------------
local panelsToHide = {Panels.BottomLine, Panels.LeftVerticalLine, Panels.RightVerticalLine, Panels.CubeLeft, Panels.CubeRight}

for _, panels in pairs(panelsToHide) do
	panels:StripTextures()
end


--------------------------------------------
-- Move Chatbackground / Chattabs / Datatext
--------------------------------------------
	
-- Resize Left Datatext
Panels.DataTextLeft:ClearAllPoints()
Panels.DataTextLeft:Size(370, 15)

-- Resize Right Datatext
Panels.DataTextRight:ClearAllPoints()
Panels.DataTextRight:Size(370, 15)

if C.Chat.Background == true then
	
	-- Left ChatBG
	Panels.LeftChatBG:ClearAllPoints()
	Panels.LeftChatBG:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 20)
	Panels.LeftChatBG:Size(370, 100)

	-- Left Chattab
	Panels.TabsBGLeft:StripTextures()

	-- Left DataText	
	Panels.DataTextLeft:SetPoint("TOP", Panels.LeftChatBG, "BOTTOM", 0, 1)

	-- Rigt ChatBG
	Panels.RightChatBG:ClearAllPoints()
	Panels.RightChatBG:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 20)
	Panels.RightChatBG:Size(370, 100)

	-- Right Chattab
	Panels.TabsBGRight:StripTextures()

	-- Right DataText
	Panels.DataTextRight:SetPoint("TOP", Panels.RightChatBG, "BOTTOM", 0, 1)

else

	-- Left DataText	
	Panels.DataTextLeft:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 4)
	
	-- Right DataText
	Panels.DataTextRight:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 4)

end

---------------------------------------------
-- Minimap Panels
---------------------------------------------

_G["Minimap"]:SetFrameStrata("MEDIUM")
_G["Minimap"]:SetFrameLevel(2)

-- Set the Left Datatextpanel (Bottom of Minimap for Clock)
Panels.MinimapDataTextOne:ClearAllPoints()
Panels.MinimapDataTextOne:SetPoint("CENTER", TukuiMinimap, "BOTTOM", 0, 10)
Panels.MinimapDataTextOne:StripTextures()

-- Remove the Right Datatextpanel cause we dont need it
Panels.MinimapDataTextTwo:Kill()