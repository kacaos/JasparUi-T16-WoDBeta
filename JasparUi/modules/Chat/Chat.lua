local T, C, L = Tukui:unpack()
local Panels = T["Panels"]

T.SetDefaultChatFramesPosition = function(frame)
	if (not TukuiDataPerChar.Chat) then
		TukuiDataPerChar.Chat = {}
	end

	local Width = Panels.DataTextLeft:GetWidth()

	for i = 1, NUM_CHAT_WINDOWS do
		local Frame = _G["ChatFrame"..i]
		local ID = Frame:GetID()
		
		-- Set font size and chat frame size
		Frame:Size(Width, 87)
		
		-- Set default chat frame position
		if (ID == 1) then
			Frame:ClearAllPoints()
			Frame:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 8, 26)
		elseif (C.Chat.LootFrame and ID == 4) then
			if (not Frame.isDocked) then
				Frame:ClearAllPoints()
				Frame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -8, 26)
			end
		end
		
		if (ID == 1) then
			FCF_SetWindowName(Frame, "G, S & W")
		end
		
		if (ID == 2) then
			FCF_SetWindowName(Frame, "Log")
		end
		
		if (not Frame.isLocked) then
			FCF_SetLocked(Frame, 1)
		end
		
		local Anchor1, Parent, Anchor2, X, Y = Frame:GetPoint()
		TukuiDataPerChar.Chat["Frame" .. i] = {Anchor1, Anchor2, X, Y, Width, 87}
	end
end
hooksecurefunc( "FCF_RestorePositionAndDimensions", T.SetDefaultChatFramesPosition )

-------------------------------------------------
-- Hyperlink
-------------------------------------------------
local orig1, orig2 = {}, {}
local GameTooltip = GameTooltip

local linktypes = {item = true, enchant = true, spell = true, quest = true, unit = true, talent = true, achievement = true, glyph = true, instancelock = true}


local function OnHyperlinkEnter(frame, link, ...)
	local linktype = link:match("^([^:]+)")
	if linktype and linktypes[linktype] then
		GameTooltip:SetOwner(frame, "ANCHOR_TOPLEFT", -4, 25)
		GameTooltip:SetHyperlink(link)
		GameTooltip:Show()
	end

	if orig1[frame] then return orig1[frame](frame, link, ...) end
end

local function OnHyperlinkLeave(frame, ...)
	GameTooltip:Hide()
	if orig2[frame] then return orig2[frame](frame, ...) end
end


local _G = getfenv(0)
for i=1, NUM_CHAT_WINDOWS do
	local frame = _G["ChatFrame"..i]
	orig1[frame] = frame:GetScript("OnHyperlinkEnter")
	frame:SetScript("OnHyperlinkEnter", OnHyperlinkEnter)

	orig2[frame] = frame:GetScript("OnHyperlinkLeave")
	frame:SetScript("OnHyperlinkLeave", OnHyperlinkLeave)
end