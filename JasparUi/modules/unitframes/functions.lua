local T, C, L, G = unpack( Tukui )
local TukuiUnitFrames = T["UnitFrames"]
local Panels = T["Panels"]
local Colors = T["Colors"]

function ShortValue(v)
	if( v >= 1e6 ) then
		return ( "%.1fm" ):format( v / 1e6 ):gsub( "%.?0+([km])$", "%1" )
	elseif( v >= 1e3 or v <= -1e3 ) then
		return ( "%.1fk" ):format( v / 1e3 ):gsub( "%.?0+([km])$", "%1" )
	else
		return v
	end
end

hooksecurefunc(TukuiUnitFrames, "UpdateNamePosition", function(self)
	if (self.Power.Value:GetText() and UnitIsEnemy("player", "target")) then
		self.Name:ClearAllPoints()
		self.Name:SetPoint("CENTER", self.Health, "CENTER", 0, 00)
	else
		self.Name:ClearAllPoints()
		self.Power.Value:SetAlpha(1)
		self.Name:SetPoint("TOPLEFT", self.Health, "BOTTOMLEFT", 0, 0)
	end
end)

hooksecurefunc(TukuiUnitFrames, "UpdateBuffsHeaderPosition", function(self)
	local Frame = self:GetParent()
	local Buffs = Frame.Buffs

	if not Buffs then
		return
	end

	Buffs:ClearAllPoints() 
	Buffs:Point("BOTTOMLEFT", Frame, "TOPLEFT", -1, 8)
end)

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
	
	Player:Size(204, 25)
	Target:Size(204, 25)
	ToT:Size(90, 15)
	Pet:Size(90, 15)
	
	Player:SetPoint("BOTTOMLEFT", TukuiUnitFrames.Anchor, "TOPLEFT", -30, 150)
	Target:SetPoint("BOTTOMRIGHT", TukuiUnitFrames.Anchor, "TOPRIGHT", 30, 150)
	ToT:SetPoint("TOPRIGHT", Target, "BOTTOMRIGHT", 0, -5)
	Pet:SetPoint("TOPLEFT", Player, "BOTTOMLEFT", 0, -5)
	Raid:SetPoint("BOTTOMLEFT", Panels.LeftChatBG, "TOPLEFT", 0, 5)	
end)