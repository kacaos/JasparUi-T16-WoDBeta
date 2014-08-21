local T, C, L, D = Tukui:unpack()

---------------------------------------------
-- Locales
---------------------------------------------
local Extra = {
	["BuffReminder"] = {
			["Name"] = "Show Raidbuffreminder",
			["Desc"] = "Enable Raidbuffreminder next to the Minimap",
	},
}

local ClassBars = {
	["Shaman"] = {
			["Name"] = "Enable Shaman Totembar",
			["Desc"] = "Enable Shaman Totembar",
	},
	["Warlock"] = {
			["Name"] = "Enable Warlock Classbar",
			["Desc"] = "Enable Warlock Classbar",
	},
	["Monk"] = {
			["Name"] = "Enable Monk Harmonybar",
			["Desc"] = "Enable Monk Harmonybar",
	},
	["Druid"] = {
			["Name"] = "Enable Druid Eclipsebar",
			["Desc"] = "Enable Druid Eclipsebar",
	},
	["Mage"] = {
			["Name"] = "Enable Mage Arcanecharges",
			["Desc"] = "Enable Mage Arcanecharges",
	},
	["Paladin"] = {
			["Name"] = "Enable Paladin Holypower",
			["Desc"] = "Enable Paladin Holypower",
	},
	["Priest"] = {
			["Name"] = "Enable Priest Shadoworbs",
			["Desc"] = "Enable Priest Shadoworbs",
	},
	["Deathknight"] = {
			["Name"] = "Enable Deathknight Runesbar",
			["Desc"] = "Enable Deathknight Runesbar",
	},
	["Warrior"] = {
			["Name"] = "Enable Warrior BannerCD",
			["Desc"] = "Enable Warrior BannerCD",
	},
}

local CastBars = {
	["PlayerWidth"] = {
			["Name"] = "Set width of player castbar",
			["Desc"] = "Set width of player castbar",
	},
	["PlayerHeight"] = {
			["Name"] = "Set height of player castbar",
			["Desc"] = "Set height of player castbar",
	},
	["PCBIconSize"] = {
			["Name"] = "Set size of player castbaricon",
			["Desc"] = "Set size of player castbaricon",
	},
	["TargetWidth"] = {
			["Name"] = "Set width of target castbar",
			["Desc"] = "Set width of target castbar",
	},
	["TargetHeight"] = {
			["Name"] = "Set height of target castbar",
			["Desc"] = "Set height of target castbar",
	},
	["TCBIconSize"] = {
			["Name"] = "Set size of target castbaricon",
			["Desc"] = "Set size of target castbaricon",
	},
}

TukuiConfig.enUS["Extra"] = Extra
TukuiConfig.enUS["ClassBars"] = ClassBars
TukuiConfig.enUS["CastBars"] = CastBars