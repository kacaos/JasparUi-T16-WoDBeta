T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "MONK") then
		Player.HarmonyBar:ClearAllPoints()
		Player.HarmonyBar:Point("BOTTOMLEFT", Player, "TOPLEFT", 260, 10)
		Player.HarmonyBar:CreateBackdrop()
		applyDrag(Player.HarmonyBar)

		Player.Totems:ClearAllPoints()
		Player.Totems:Point("BOTTOMLEFT", Player, "TOPLEFT", 0, 100)
		Player.Totems:CreateBackdrop()
		---------------------------------------------------------
		--Powerbar
		---------------------------------------------------------
		local sPowerBG = CreateFrame("Frame", "sPowerBG",Player.HarmonyBar)
		sPowerBG:Height(17)
		sPowerBG:Point("TOPLEFT", Player.HarmonyBar, "BOTTOMLEFT", -2, -6)
		sPowerBG:Point("TOPRIGHT", Player.HarmonyBar, "BOTTOMRIGHT", 2, -6)
		sPowerBG:SetTemplate("Default")

		local sPowerStatus = CreateFrame("StatusBar", "sPowerStatus", sPowerBG)
		sPowerStatus:SetStatusBarTexture(C["Medias"].Blank)
		sPowerStatus:SetFrameLevel(10)
		sPowerStatus:Point("TOPLEFT", sPowerBG, "TOPLEFT", 2, -2)
		sPowerStatus:Point("BOTTOMRIGHT", sPowerBG, "BOTTOMRIGHT", -2, 2)
		sPowerStatus.t = sPowerStatus:CreateFontString(nil, "OVERLAY")
		sPowerStatus.t:SetPoint("CENTER", -10, 0)
		sPowerStatus.t:SetFont(C.Medias.Font, 12, "OUTLINE")
		sPowerStatus.t:SetShadowOffset(0.5, -0.5)
		sPowerStatus.t:SetShadowColor(0,0,0)		
		sPowerStatus.tt = sPowerStatus:CreateFontString(nil, "OVERLAY")
		sPowerStatus.tt:SetPoint("CENTER", 4, 0)
		sPowerStatus.tt:SetFont(C.Medias.Font, 12, "OUTLINE")
		sPowerStatus.tt:SetShadowOffset(0.5, -0.5)
		sPowerStatus.tt:SetShadowColor(0,0,0)		
		sPowerStatus.tz = sPowerStatus:CreateFontString(nil, "OVERLAY")
		sPowerStatus.tz:SetPoint("CENTER", 16, 0)
		sPowerStatus.tz:SetFont(C.Medias.Font, 12, "OUTLINE")
		sPowerStatus.tz:SetShadowOffset(0.5, -0.5)
		sPowerStatus.tz:SetShadowColor(0,0,0)
		
		sPowerStatus:SetStatusBarColor(ClassColor.r, ClassColor.g, ClassColor.b)
		local t = 0
		sPowerStatus:SetScript("OnUpdate", function(self, elapsed)
			t = t + elapsed;
			if (t > 0.07) then
				sPowerStatus:SetMinMaxValues(0, UnitPowerMax("player"))
				local power = UnitPower("player")
				local activeRegen = floor(GetPowerRegen())
				sPowerStatus:SetValue(power)
				sPowerStatus.t:SetText(ShortValue(power))
				sPowerStatus.tt:SetText(" | ", activeRegen)
				sPowerStatus.tz:SetText(activeRegen)
			end
		end)
		sPowerStatus:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		sPowerBG:RegisterEvent("PLAYER_ENTERING_WORLD")
		sPowerBG:RegisterEvent("UNIT_DISPLAYPOWER")			
	end
end)