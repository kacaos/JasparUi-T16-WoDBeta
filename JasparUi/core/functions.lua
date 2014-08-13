local T, C, L = unpack(Tukui)
ClassColor = RAID_CLASS_COLORS[select(2,UnitClass("player"))] -- Do not remove this line, it is what is required to add class color for the datatext.^

function applyDrag(f)
    f:SetMovable(true)
    f:SetUserPlaced(true)
    f:EnableMouse(true)
    f:RegisterForDrag("LeftButton")
    f:SetScript("OnDragStart", function(s) if IsAltKeyDown() and IsShiftKeyDown() then s:StartMoving() end end)
    f:SetScript("OnDragStop", function(s) s:StopMovingOrSizing() end)
    f:SetScript("OnEnter", function(s) 
      GameTooltip:SetOwner(s, "ANCHOR_TOP")
      GameTooltip:AddLine(s:GetName(), 0, 1, 0.5, 1, 1, 1)
      GameTooltip:AddLine("Hold down ALT+SHIFT to drag!", 1, 1, 1, 1, 1, 1)
      GameTooltip:Show()
    end)
    f:SetScript("OnLeave", function(s) GameTooltip:Hide() end)
end

SLASH_CLEARCOMBAT1 = "/clc"
SlashCmdList.CLEARCOMBAT = function() 
  CombatLogClearEntries() 
  print ("Combatlog cleared")
end

----------------------------------------------------------------------------------------
--  Player's Role and Talents spent
----------------------------------------------------------------------------------------
T.CheckForKnownTalent = function(spellid)
  local wanted_name = GetSpellInfo(spellid)
  if not wanted_name then return nil end
  local num_tabs = GetNumSpecializations()
  for t = 1, num_tabs do
    local num_talents = GetNumTalents(t)
    for i = 1, num_talents do
      local name_talent, _, _, _, current_rank = GetTalentInfo(t, i)
      if name_talent and name_talent == wanted_name then
        if current_rank and current_rank > 0 then
          return true
        else
          return false
        end
      end
    end
  end
  return false
end

local RoleUpdater = CreateFrame("Frame")
function CheckRole(self, event, unit)
  local tree = GetSpecialization()
  local resilience
  local resilperc = GetCombatRatingBonus(COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN)
  if resilperc > GetDodgeChance() and resilperc > GetParryChance() and UnitLevel("player") == MAX_PLAYER_LEVEL then
    resilience = true
  else
    resilience = false
  end
  if ((T.myclass == "PALADIN" and tree == 2) or (T.myclass == "WARRIOR" and tree == 3) or (T.myclass == "DEATHKNIGHT" and tree == 1) or (T.myclass == "MONK" and tree == 1)) and resilience == false
  or (T.myclass == "DRUID" and tree == 3 and GetBonusBarOffset() == 3) then
    T.Role = "Tank"
  elseif ((T.myclass == "PALADIN" and tree == 1) or (T.myclass == "DRUID" and tree == 4) or (T.myclass == "SHAMAN" and tree == 3) or (T.myclass == "PRIEST" and tree ~= 3) or (T.myclass == "MONK" and tree == 2)) then
    T.Role = "Healer"
  else
    local playerint = select(2, UnitStat("player", 4))
    local playeragi = select(2, UnitStat("player", 2))
    local base, posBuff, negBuff = UnitAttackPower("player")
    local playerap = base + posBuff + negBuff

    if (((playerap > playerint) or (playeragi > playerint)) and not (T.myclass == "SHAMAN" and tree ~= 1 and tree ~= 3) and not (UnitBuff("player", GetSpellInfo(24858)) 
    or UnitBuff("player", GetSpellInfo(115070)))) or T.myclass == "ROGUE" or T.myclass == "HUNTER" or (T.myclass == "SHAMAN" and tree == 2) then
      T.Role = "Melee"
    else
      T.Role = "Caster"
    end
  end
end
RoleUpdater:RegisterEvent("PLAYER_ENTERING_WORLD", OnEvent)
RoleUpdater:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED", OnEvent)
RoleUpdater:RegisterEvent("PLAYER_TALENT_UPDATE", OnEvent)
RoleUpdater:RegisterEvent("CHARACTER_POINTS_CHANGED", OnEvent)
RoleUpdater:RegisterEvent("UNIT_INVENTORY_CHANGED", OnEvent)
RoleUpdater:RegisterEvent("UPDATE_BONUS_ACTIONBAR", OnEvent)
RoleUpdater:SetScript("OnEvent", CheckRole)
CheckRole()