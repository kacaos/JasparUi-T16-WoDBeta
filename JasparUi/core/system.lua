local T, C, L, G = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales

local font, caith, pixel = C["Medias"].font, C["Medias"].font, C["Medias"].font
local blank, norm, empath = C["Medias"].Normal, C["Medias"].Normal, C["Medias"].Normal

-- font template used for fallback values if incorrect or no values are entered
-- don't change this, unless you know what you're doing
local fontTemplate = {
	family = font,
	size = 12,
	outline = "NONE", -- "THINOUTLINE" / "OUTLINE" / "MONOCHROMEOUTLINE"
	point = "CENTER",
	xOff = 0,
	yOff = 0
}

-- fallback functions
local function Font(family, size, outline, point, xOff, yOff)
	local result = {
		setfont = {
			family or fontTemplate.family,
			size or fontTemplate.size,
			outline or fontTemplate.outline
		},
		setoffsets = {
			point or fontTemplate.point,
			xOff or fontTemplate.xOff,
			yOff or fontTemplate.yOff
		}
	}
	return result;
end

local function Texture(texture)
	local result = {
		texture or C["Medias"].Normal,
	}
	return result;
end

T.Fonts = {
		
		-- chat
		cTab = Font(font, 12, "OUTLINE", nil, nil, nil), -- chat tab
		cGeneral = Font(caith, 11, nil, nil, nil, nil), -- chat window
		
		-- datatext
		dFont = Font(font, 12, "OUTLINE", nil, nil, nil), 
		
		fFont = Font(font, 12, "OUTLINE", nil, nil, nil), 
		
		-- loot
		lGeneral = Font(caith, 11, "OUTLINE", nil, nil, nil),
		
		-- nameplates
		nGeneral = Font(font, 12, "OUTLINE", nil, nil, nil),
		
		-- unitframes - don't try and anchor these yet
		uHealth = Font(font, 12, "OUTLINE", nil, nil, nil), -- unit health
		uPower = Font(font, 12, "OUTLINE", nil, nil, nil), -- unit power
		uName = Font(font, 12, "OUTLINE", nil, nil, nil), -- unit name
		
		uGeneral = Font(font, 12, "OUTLINE", nil, nil, nil), -- castbar, pvp, etc
		uCombat = Font(caith, 12 , nil, nil, nil, nil), -- combat feedback
		uAuras = Font(font, 12, "OUTLINE", nil, nil, nil),
		
		-- miscellaneous
		altPowerBar = Font(font, nil, "OUTLINE", nil, 0, 1),
		lootRollFrame = Font(font, nil, "OUTLINE", nil, nil, nil),
		cooldown = Font(font, nil, "MONOCHROMEOUTLINE", nil, nil, nil), -- actionbar / bag / etc.
		movers = Font(font, nil, "OUTLINE", nil, nil, nil), -- /moveui text + vehicle
		skin = Font(font, 12, "OUTLINE", nil, nil, nil), -- /moveui text + vehicle
}

T.Textures = {
	-- interface textures (e.g - panels)
	interface = Texture(nil),
	
	-- status bar textures
	statusBars = Texture(C["Medias"].Normal),
}