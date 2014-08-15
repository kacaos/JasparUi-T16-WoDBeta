T, C, L = Tukui:unpack()
local TukuiUnitFrames = T["UnitFrames"]
local Class = select(2, UnitClass("player"))

hooksecurefunc(TukuiUnitFrames, "Player", function(Player)
	if (Class == "WARLOCK") then
		Player.WarlockSpecBars:ClearAllPoints()
		Player.WarlockSpecBars:Point("CENTER", UIParent, "CENTER", 0, -100)
		
		Player.WarlockSpecBars:SetWidth(200)
		Player.WarlockSpecBars:SetHeight(4)
		
		for i = 1, 4 do
			Player.WarlockSpecBars[i]:Height(4)
			Player.WarlockSpecBars[i]:SetStatusBarTexture(C["Medias"].Blank)
		end
		
		---------------------------------------------------------
		--Powerbar
		---------------------------------------------------------
		local sPowerBG = CreateFrame("Frame", "sPowerBG",Player.WarlockSpecBars)
		sPowerBG:Height(6)
		sPowerBG:Point("TOPLEFT", Player.WarlockSpecBars, "BOTTOMLEFT", -1, -2)
		sPowerBG:Point("TOPRIGHT", Player.WarlockSpecBars, "BOTTOMRIGHT", 1, -2)
		sPowerBG:SetTemplate("Transparent")

		local sPowerStatus = CreateFrame("StatusBar", "sPowerStatus", sPowerBG)
		sPowerStatus:SetStatusBarTexture(C["Medias"].Blank)
		sPowerStatus:SetFrameLevel(6)
		sPowerStatus:Point("TOPLEFT", sPowerBG, "TOPLEFT", 1, -1)
		sPowerStatus:Point("BOTTOMRIGHT", sPowerBG, "BOTTOMRIGHT", -1, 1)
		
		sPowerStatus:SetStatusBarColor(ClassColor.r, ClassColor.g, ClassColor.b)
		local t = 0
		sPowerStatus:SetScript("OnUpdate", function(self, elapsed)
			t = t + elapsed;
			if (t > 0.07) then
				sPowerStatus:SetMinMaxValues(0, UnitPowerMax("player"))
				local power = UnitPower("player")
				local activeRegen = floor(GetPowerRegen())
				sPowerStatus:SetValue(power)
			end
		end)
		sPowerStatus:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
		sPowerBG:RegisterEvent("PLAYER_ENTERING_WORLD")
		sPowerBG:RegisterEvent("UNIT_DISPLAYPOWER")	
	end
end)