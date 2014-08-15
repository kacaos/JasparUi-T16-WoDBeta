local T, C, L, G = unpack( Tukui )
local TukuiUnitFrames = T["UnitFrames"]
local Panels = T["Panels"]

--Position
-- Size & Position
hooksecurefunc(TukuiUnitFrames, "CreateUnits", function()
	local Player = TukuiUnitFrames.Units.Player
	local Target = TukuiUnitFrames.Units.Target
	local ToT = TukuiUnitFrames.Units.TargetOfTarget
	local Pet = TukuiUnitFrames.Units.Pet
	local Target = TukuiUnitFrames.Units.Target
	local Focus = TukuiUnitFrames.Units.Focus
	local FocusTarget = TukuiUnitFrames.Units.FocusTarget
	local Party = TukuiUnitFrames.Headers.Party
	local Raid = TukuiUnitFrames.Headers.Raid
	local RaidPet = TukuiUnitFrames.Headers.RaidPet

	Target:ClearAllPoints()
	ToT:ClearAllPoints()
	Player:ClearAllPoints()
	Raid:ClearAllPoints()
	Pet:ClearAllPoints()
	
	Player:Size(192, 25)
	Target:Size(192, 25)
	ToT:Size(80, 15)
	Pet:Size(80, 15)
	
	
	Player:SetPoint("BOTTOMLEFT", TukuiUnitFrames.Anchor, "TOPLEFT", -30, 150)
	Target:SetPoint("BOTTOMRIGHT", TukuiUnitFrames.Anchor, "TOPRIGHT", 30, 150)
	ToT:SetPoint("TOPRIGHT", Target, "BOTTOMRIGHT", 0, -3)
	Pet:SetPoint("TOPLEFT", Player, "BOTTOMLEFT", 0, -3)
	Raid:SetPoint("BOTTOMLEFT", Panels.LeftChatBG, "TOPLEFT", 0, 15)	
end)