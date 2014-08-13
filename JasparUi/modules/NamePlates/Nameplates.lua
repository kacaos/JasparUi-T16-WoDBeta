T, C, L = Tukui:unpack()
local NamePlates = T["NamePlates"]
local _G = _G
local unpack = unpack
local find, match = find, match
local Hider = T["Panels"].Hider
local WorldFrame = WorldFrame
local RAID_CLASS_COLORS = RAID_CLASS_COLORS
local Colors = T["Colors"]
local Convert = T.RGBToHex
local Scale = T.Scale
local FrameNumber = 0
local Texture = T.GetTexture(C["NamePlates"].Texture)
local goodR, goodG, goodB = unpack(C.Nameplates.goodcolor)
local badR, badG, badB = unpack(C.Nameplates.badcolor)
local transitionR, transitionG, transitionB = unpack(C.Nameplates.transitioncolor)

hooksecurefunc(NamePlates, "Skin", function(self, object)
	object.Health:CreateBackdrop("Default")
end)