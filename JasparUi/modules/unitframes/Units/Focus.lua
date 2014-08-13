T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Font = T.GetFont(C["UnitFrames"].Font)

hooksecurefunc(TukuiUnitFrames, "Focus", function(Focus)
	--------------------------------------------------
	--General
	--------------------------------------------------
	Focus:SetBackdrop( nil )
	Focus:SetBackdropColor( 0, 0, 0 )
	Focus.Shadow:Kill()

	--------------------------------------------------	
	--Health
	--------------------------------------------------
	Focus.Health:Size( 200, 20 )
	Focus.Health:CreateBackdrop("Default")
	Focus.Health.bg:SetVertexColor(.5, .5, .5)
	Focus.Health.Value:Point( "LEFT", Focus.Health, "LEFT", 4, 0 )

	--------------------------------------------------
	--Power
	--------------------------------------------------
	Focus.Power:Size( 233, 5 )
	Focus.Power:ClearAllPoints()
	Focus.Power:Point( "TOPRIGHT", Focus.Health, "BOTTOMRIGHT", 0, 0 )
	Focus.Power:Point( "TOPLEFT", Focus.Health, "BOTTOMLEFT", 0, 0 )
	Focus.Power:SetFrameLevel( Focus.Health:GetFrameLevel() + 2 )
	Focus.Power:CreateBackdrop("Default")
	Focus.Power.Value:Point( "RIGHT", Focus.Health, "RIGHT", -4, 0 )

	--------------------------------------------------
	-- Name
	--------------------------------------------------
	Focus.Name:ClearAllPoints()
	Focus.Name:SetParent(Focus.Health)
	Focus.Name:Point("CENTER", Focus.Health, "CENTER", 0, 0)

	--------------------------------------------------
	-- Castbar
	--------------------------------------------------
	Focus.Castbar:ClearAllPoints()
	Focus.Castbar:SetPoint("TOPRIGHT", Focus, "BOTTOMRIGHT", -1, 0)
	Focus.Castbar:Width(Focus.Health:GetWidth()-24)
	Focus.Castbar:Height(15)

	Focus.Castbar.Time:ClearAllPoints()
	Focus.Castbar.Time:SetPoint("RIGHT", Focus.Castbar, "RIGHT", -4, 0)

	if (C.UnitFrames.CastBarIcon) then
		Focus.Castbar.Button:ClearAllPoints()
		Focus.Castbar.Button:Point("RIGHT", Focus.Castbar, "LEFT", -5, 0)
		Focus.Castbar.Button:Size(19)
	end

	Focus.Castbar.Text:ClearAllPoints()
	Focus.Castbar.Text:SetPoint("LEFT", Focus.Castbar, "LEFT", 4, 0)

end)