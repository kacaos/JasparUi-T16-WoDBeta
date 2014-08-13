local T, C, L = Tukui:unpack()

-- TukuiConfig:SetCallback("ActionBars", "NormalButtonSize", function(value)
-- 	-- Code to run when the option is changed. "value" is the new value that was just set.
-- end)

-- C["General"]["InOut"] = false
-- C["General"]["HideShadows"] = true
-- C["ActionBars"]["ButtonSpacing"] = 1
-- C["ActionBars"]["Font"] = "Pixel"
-- C["Auras"]["ClassicTimer"] = true
-- C["Auras"]["Font"] = "Pixel"
-- C["Bags"]["Font"] = "Pixel"
-- C["Chat"]["Background"] = true
-- C["Chat"]["TabFont"] = "Pixel"
-- C["Cooldowns"]["Font"] = "Pixel"
-- C["DataTexts"]["Time24HrFormat"] = true
-- C["DataTexts"]["Font"] = "Pixel"
-- C["NamePlates"]["Font"] = "Pixel"
-- C["Party"]["ShowPlayer"] = true
-- C["Party"]["DarkTheme"] = true
-- C["Party"]["Font"] = "Pixel"
-- C["Raid"]["DarkTheme"] = true
-- C["Raid"]["Font"] = "Pixel"
-- C["Tooltips"]["Font"] = "Pixel"
-- C["UnitFrames"]["Font"] = "Pixel"

C["Nameplates"] = {
	["EnhanceThreat"] = true,
	["goodcolor"] = {75/255,  175/255, 76/255},	        -- good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {0.78, 0.25, 0.25},			        -- bad threat color (opposite of above)
	["transitioncolor"] = {218/255, 197/255, 92/255},	-- threat color when gaining threat
}

C["combattext"] = {
	["enable"] = true,							-- Global enable combat text
	["blizzheadnumbers"] = false,				-- Use blizzard damage/healing output(above mob/player head)
	["damagestyle"] = true,						-- Change default damage/healing font above mobs/player heads(you need to restart WoW to see changes)
	["damage"] = true,							-- Show outgoing damage in it's own frame
	["healing"] = true,							-- Show outgoing healing in it's own frame
	["showhots"] = true,						-- Show periodic healing effects in healing frame
	["showoverhealing"] = true,					-- Show outgoing overhealing
	["petdamage"] = true,						-- Show your pet damage
	["dotdamage"] = true,						-- Show damage from your dots
	["damagecolor"] = true,						-- Display damage numbers depending on school of magic
	["icons"] = true,							-- Show outgoing damage icons
	["iconsize"] = 16,							-- Icon size of spells in outgoing damage frame, also has effect on dmg font size
	["treshold"] = 1,							-- Minimum damage to show in damage frame
	["healtreshold"] = 1,						-- Minimum healing to show in incoming/outgoing healing messages
	["scrollable"] = false,						-- Allows you to scroll frame lines with mousewheel
	["maxlines"] = 15,							-- Max lines to keep in scrollable mode(more lines = more memory)
	["timevisible"] = 3,						-- Time(seconds) a single message will be visible
	["stopvespam"] = false,						-- Automaticly turns off healing spam for priests in shadowform
	["dkrunes"] = true,							-- Show deathknight rune recharge
	["killingblow"] = false,					-- Tells you about your killingblows
	["mergeaoespam"] = true,					-- Merges multiple aoe damage spam into single message
	["mergeaoespamtime"] = 3,					-- Time in seconds aoe spell will be merged into single message(works only with ["damage"] = true)
	["dispel"] = true,							-- Tells you about your dispels(works only with ["damage"] = true)
	["interrupt"] = true,						-- Tells you about your interrupts(works only with ["damage"] = true)
	["critprefix"] = "*",						-- Symbol that will be added before crit
	["critpostfix"] = "*",						-- Symbol that will be added after crit
}

local combattext = {
	["enable"] = {
		["Name"] = "Enable", -- The name to appear beside the control on the GUI
		["Desc"] = "Enable the Combattext", -- Short text description appearing when hovered over the control
	},
	
	["blizzheadnumbers"] = {
		["Name"] = "Blizzards Headnumbers",
		["Desc"] = "Show Blizzards Combattext",
	},	

	["damagestyle"] = {
		["Name"] = "Damagestyle",
		["Desc"] = "Change default damage/healing font above mobs/player heads(you need to restart WoW to see changes)",
	},

	["damage"] = {
		["Name"] = "Damage",
		["Desc"] = "Show outgoing damage in it's own frame",
	},

	["healing"] = {
		["Name"] = "Healing",
		["Desc"] = "Show outgoing healing in it's own frame",
	},

	["showhots"] = {
		["Name"] = "Show Hots",
		["Desc"] = "Show periodic healing effects in healing frame",
	},

	["showoverhealing"] = {
		["Name"] = "Show Overhealing",
		["Desc"] = "Show outgoing overhealing",
	},

	["petdamage"] = {
		["Name"] = "Pet Damage",
		["Desc"] = "Show your pet damage",
	},

	["dotdamage"] = {
		["Name"] = "Damageot Damage",
		["Desc"] = "Show damage from your dots",
	},

	["damagecolor"] = {
		["Name"] = "Damage Color",
		["Desc"] = "Display damage numbers depending on school of magic",
	},
	
	["critprefix"] = {
		["Name"] = "Crit Prefix",
		["Desc"] = "Symbol that will be added before crit",
	},
	
	["critpostfix"] = {
		["Name"] = "Crit Postfix",
		["Desc"] = "Symbol that will be added after crit",
	},
}
TukuiConfig.enUS["combattext"] = Combattext
TukuiConfig.enUS["classtimer"] = Classtimer