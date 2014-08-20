local T, C, L, D = Tukui:unpack()

D["General"] = {
	["InOut"] = false,
	["HideShadows"] = true,
	["BackdropColor"] = {0.1, 0.1, 0.1},
	["BorderColor"] = {0, 0, 0}
}

D["Chat"] = {
	["Background"] = true,
	["TabFont"] = "Pixel",
}

D["ActionBars"] = {
	["Font"] = "Pixel",
	["Macro"] = true,
	["HideBackdrop"] = true,
	["OwnMetamorphosisBar"] = false,
	["ButtonSpacing"] = 1,
	["ShapeShift"] = false,
}

D["UnitFrames"] = {
	["Font"] = "Pixel",
	["HealthTexture"] = "Blank",
	["PowerTexture"] = "Blank",
}

D["Auras"] = {
	["Font"] = "Pixel",
	["ClassicTimer"] = true,
}

D["DataTexts"] = {
	["Font"] = "Pixel",
	["Time24HrFormat"] = true,
	["NameColor"] = {0,1,0},
	["ValueColor"] = {0,1,0},
}

D["Bags"] = {
	["Font"] = "Pixel",
}

D["Cooldowns"] = {
	["Font"] = "Pixel",
}

D["NamePlates"] = {
	["Font"] = "Pixel",
	["Texture"] = "Blank",
}

D["Party"] = {
	["Font"] = "Pixel",
	["ShowPlayer"] = true,
	["DarkTheme"] = true,
	["PowerTexture"] = "Blank",
	["HealthTexture"] = "Blank",
}

D["Raid"] = {
	["Font"] = "Pixel",
	["DarkTheme"] = true,
	["PowerTexture"] = "Blank",
	["HealthTexture"] = "Blank",
}

D["Tooltips"] = {
	["HealthFont"] = "Pixel",
	["HealthTexture"] = "Blank",
}

D["Extra"] = {
	["BuffReminder"] = false,
}

D["ClassBars"] = {
	["Shaman"] = true,
	["Warlock"] = true,
	["Monk"] = true,
	["Druid"] = true,
	["Mage"] = true,
}
	
---------------------------------------------
-- Locals
---------------------------------------------
local Extra = {
	["BuffReminder"] = {
			["Name"] = "Show Raidbuffreminder",
			["Desc"] = "Enable Raidbuffreminder next to the Minimap",
	},
}

local ClassBars = {
	["Shaman"] = {
			["Name"] = "Enable Shaman Classbar",
			["Desc"] = "Enable Shaman Classbar",
	},
	["Warlock"] = {
			["Name"] = "Enable Warlock Classbar",
			["Desc"] = "Enable Warlock Classbar",
	},
	["Monk"] = {
			["Name"] = "Enable Monk Classbar",
			["Desc"] = "Enable Monk Classbar",
	},
	["Druid"] = {
			["Name"] = "Enable Druid Eclipsebar",
			["Desc"] = "Enable Druid Eclipsebar",
	},
	["Mage"] = {
			["Name"] = "Enable Mage Classbar",
			["Desc"] = "Enable Mage Classbar",
	},
}
TukuiConfig.enUS["Extra"] = Extra
TukuiConfig.enUS["ClassBars"] = ClassBars