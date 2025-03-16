local addonName, addon  = ...
local OUTFITTER_MINIMAP_BUTTON_RADIUS_LENGTH = 79

if LE_EXPANSION_LEVEL_CURRENT > 0 and LE_EXPANSION_LEVEL_CURRENT >= LE_EXPANSION_DRAGONFLIGHT then
	OUTFITTER_MINIMAP_BUTTON_RADIUS_LENGTH = 105
end

---- Create the minimap button in code rather than XML
local function CreateMinimapButton()
	OutfitterMinimapButton = CreateFrame("Button", "OutfitterMinimapButton", MinimapBackdrop)
	OutfitterMinimapButton:SetSize(32, 32)
	OutfitterMinimapButton:SetPoint("CENTER", MinimapBackdrop, "CENTER", -80, 0)
	OutfitterMinimapButton:SetMovable(true)
	OutfitterMinimapButton:EnableMouse(true)

	-- Textures
	OutfitterMinimapButton:SetNormalTexture("Interface\\Addons\\Outfitter\\Textures\\MinimapButton")
	local overlayTexture = OutfitterMinimapButton:CreateTexture(nil, "OVERLAY")
	overlayTexture:SetSize(53, 53)
	overlayTexture:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	overlayTexture:SetPoint("TOPLEFT")
	local highlightTexture = OutfitterMinimapButton:CreateTexture(nil, "HIGHLIGHT")
	highlightTexture:SetTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
	highlightTexture:SetBlendMode("ADD")
	OutfitterMinimapButton:SetHighlightTexture(highlightTexture)

	--OutfitterMinimapButton.Inherit = Outfitter.Inherit
	--OutfitterMinimapButton:Inherit(Outfitter._MinimapButton)

	OutfitterMinimapButton.CurrentOutfitTexture = OutfitterMinimapButton:CreateTexture(nil, "BACKGROUND")
	OutfitterMinimapButton.CurrentOutfitTexture:SetWidth(22)
	OutfitterMinimapButton.CurrentOutfitTexture:SetHeight(22)
	OutfitterMinimapButton.CurrentOutfitTexture:SetPoint("TOPLEFT", OutfitterMinimapButton, "TOPLEFT", 5, -4)
	SetPortraitToTexture(OutfitterMinimapButton.CurrentOutfitTexture, "Interface\\Icons\\INV_Chest_Cloth_21")

	OutfitterMinimapButton:RegisterForDrag("LeftButton")
	OutfitterMinimapButton:RegisterForClicks("LeftButtonDown", "RightButtonUp")
end

---- Define button functions
local function _OnEnter()
	addon.AddNewbieTip(OutfitterMinimapButton, addon.cMinimapButtonTitle, 1, 1, 1, addon.cMinimapButtonDescription, 1)
end

local function _OnLeave()
	GameTooltip:Hide()
end

local function _MouseDown()
	-- Remember where the cursor was in case the user drags
	local vCursorX, vCursorY = GetCursorPosition()

	vCursorX = vCursorX / OutfitterMinimapButton:GetEffectiveScale()
	vCursorY = vCursorY / OutfitterMinimapButton:GetEffectiveScale()

	OutfitterMinimapButton.CursorStartX = vCursorX
	OutfitterMinimapButton.CursorStartY = vCursorY

	local vCenterX, vCenterY = OutfitterMinimapButton:GetCenter()
	local vMinimapCenterX, vMinimapCenterY = Minimap:GetCenter()

	OutfitterMinimapButton.CenterStartX = vCenterX - vMinimapCenterX
	OutfitterMinimapButton.CenterStartY = vCenterY - vMinimapCenterY

	OutfitterMinimapButton.EnableFreeDrag = IsModifierKeyDown()
end

local function _MouseUp(pButton, down)
	if pButton == "LeftButton" then
		OutfitterMinimapButton:ToggleMenu()
	elseif pButton == "RightButton" then
		OutfitterMinimapButton:HideMenu()
		Outfitter:ToggleUI(true)
	end

end

local function _DragStart()
	OutfitterMinimapButton:HideMenu()
	Outfitter.SchedulerLib:ScheduleUniqueRepeatingTask(0, OutfitterMinimapButton.UpdateDragPosition, OutfitterMinimapButton)
end

local function _DragStop()
	Outfitter.SchedulerLib:UnscheduleTask(OutfitterMinimapButton.UpdateDragPosition, OutfitterMinimapButton)
end

local function _UpdateDragPosition()

	-- Remember where the cursor was in case the user drags

	local vCursorX, vCursorY = GetCursorPosition()

	vCursorX = vCursorX / OutfitterMinimapButton:GetEffectiveScale()
	vCursorY = vCursorY / OutfitterMinimapButton:GetEffectiveScale()

	local vCursorDeltaX = vCursorX - OutfitterMinimapButton.CursorStartX
	local vCursorDeltaY = vCursorY - OutfitterMinimapButton.CursorStartY

	--

	local vCenterX = OutfitterMinimapButton.CenterStartX + vCursorDeltaX
	local vCenterY = OutfitterMinimapButton.CenterStartY + vCursorDeltaY

	if OutfitterMinimapButton.EnableFreeDrag then
		OutfitterMinimapButton:SetPosition(vCenterX, vCenterY)
	else
		-- Calculate the angle and set the new position

		local vAngle = math.atan2(vCenterX, vCenterY)

		OutfitterMinimapButton:SetPositionAngle(vAngle)
	end
end


local function _SetPosition(pX, pY)
	gOutfitter_Settings.Options.MinimapButton.angle = nil
	gOutfitter_Settings.Options.MinimapButton.minimapX = pX
	gOutfitter_Settings.Options.MinimapButton.minimapY = pY

	OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", pX, pY)
end

local function _SetPositionAngle(pAngle)
	local vAngle = pAngle

	-- Restrict the angle from going over the date/time icon or the zoom in/out icons
	--[[--
	local vRestrictedStartAngle = nil
	local vRestrictedEndAngle = nil

	if GameTimeFrame:IsVisible() then
		if MinimapZoomIn:IsVisible()
		or MinimapZoomOut:IsVisible() then
			vAngle = Outfitter:RestrictAngle(vAngle, 0.4302272732931596, 2.930420793963121)
		else
			vAngle = Outfitter:RestrictAngle(vAngle, 0.4302272732931596, 1.720531504573905)
		end

	elseif MinimapZoomIn:IsVisible()
	or MinimapZoomOut:IsVisible() then
		vAngle = Outfitter:RestrictAngle(vAngle, 1.720531504573905, 2.930420793963121)
	end

	-- Restrict it from the tracking icon area

	vAngle = Outfitter:RestrictAngle(vAngle, -1.290357134304173, -0.4918423429923585)
	--]]--

	--local vRadius = 80

	local vCenterX = math.sin(vAngle) * OUTFITTER_MINIMAP_BUTTON_RADIUS_LENGTH
	local vCenterY = math.cos(vAngle) * OUTFITTER_MINIMAP_BUTTON_RADIUS_LENGTH

	--OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", vCenterX - 1, vCenterY - 1)
	--OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", vCenterX + 1, vCenterY + 1)
	OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", vCenterX, vCenterY)

	gOutfitter_Settings.Options.MinimapButton.angle = vAngle
end


local function _HideMenu()
	if not OutfitterMinimapButton.dropDownMenu then
		return
	end

	OutfitterMinimapButton.dropDownMenu:Hide()
	OutfitterMinimapButton.dropDownMenu = nil
end

local function _ShowMenu()
	assert(not OutfitterMinimapButton.dropDownMenu, "can't show the minimap menu while it's already up")
	_OnLeave() -- Hide the tooltip when we show the menu to prevent overlapping

	-- Create the items
	local items = Outfitter:New(Outfitter.UIElementsLib._DropDownMenuItems, function ()

		-- Close the menu after a short delay when a menu item is selected
		Outfitter.SchedulerLib:ScheduleTask(0.1, function ()
			OutfitterMinimapButton:HideMenu()
		end)
	end)

	-- Get the items
	Outfitter:GetMinimapDropdownItems(items)

	-- Originally set to work off the cursor position. Now works off the Minimap button.
	-- Get the cursor position
	--[[
	local scaling = UIParent:GetEffectiveScale()
	cursorX = cursorX / scaling
	cursorY = cursorY / scaling
	--]]

	-- Use the screen quadrant as basis to anchor the menu
	local cursorX, cursorY = GetCursorPosition()
	local quadrant = Outfitter:GetScreenQuadrantFromCoordinates(cursorX, cursorY)
	local top = string.find(quadrant, "TOP") and 1 or -1
	local left = string.find(quadrant, "LEFT") and -1 or 1
	local offsetX = left*10
	local offsetY = top*10
	local menuQuadrant = (string.find(quadrant, "TOP") and "BOTTOM" or "TOP") .. (string.find(quadrant, "LEFT") and "RIGHT" or "LEFT")

	-- Show the menu
	OutfitterMinimapButton.dropDownMenu = Outfitter:New(Outfitter.UIElementsLib._DropDownMenu)
	OutfitterMinimapButton.dropDownMenu:Show(items, quadrant, OutfitterMinimapButton, menuQuadrant, offsetX, offsetY) --DAC
	OutfitterMinimapButton.dropDownMenu.cleanup = function ()
		OutfitterMinimapButton.dropDownMenu = nil
	end
end

local function _ToggleMenu()
	-- Play a sound
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)

	-- Hide the menu if it's showing
	if OutfitterMinimapButton.dropDownMenu then
		OutfitterMinimapButton:HideMenu()
	else
		OutfitterMinimapButton:ShowMenu()
	end
end

-- Assign minimap functions
local function RegisterOnDrag()
	OutfitterMinimapButton:HookScript("OnDragStart", _DragStart)
	OutfitterMinimapButton:HookScript("OnDragStop", _DragStop)
end

local function RegisterMinimapMethods()
	OutfitterMinimapButton.UpdateDragPosition = _UpdateDragPosition
	OutfitterMinimapButton.SetPosition = function (self, x, y) _SetPosition(x, y) end
	OutfitterMinimapButton.SetPositionAngle = function (self, angle) _SetPositionAngle(angle) end
	OutfitterMinimapButton.HideMenu = _HideMenu
	OutfitterMinimapButton.ShowMenu = _ShowMenu
	OutfitterMinimapButton.ToggleMenu = _ToggleMenu

	RegisterOnDrag()

	OutfitterMinimapButton:HookScript("OnMouseDown", _MouseDown)
	OutfitterMinimapButton:HookScript("OnMouseUp", function (self, pButton, down) _MouseUp(pButton, down) end)
end

---- Create Outfitter functions for the minimap

-- Global call for initialization
function addon:InitializeMinimapButton()
	-- Register the minimap button with LDB?
	local LDBIcon = LibStub and LibStub("LibDBIcon-1.0", true) or nil

	if addon.LDB and LDBIcon then
		-- LibDBIcon is the base for the minimap button
		addon.LDBIcon = LDBIcon
		addon.LDB.DataObj.OnEnter = function () _OnEnter() end
		addon.LDB.DataObj.OnLeave = function () _OnLeave() end
		LDBIcon:Register("Outfitter", addon.LDB.DataObj, gOutfitter_Settings.Options.MinimapButton)
		OutfitterMinimapButton = LDBIcon:GetMinimapButton("Outfitter")
	else
		-- Outfitter is the base for the minimap button
		CreateMinimapButton()
		OutfitterMinimapButton:HookScript("OnEnter", _OnEnter)
		OutfitterMinimapButton:HookScript("OnLeave", _OnLeave)
	end
	RegisterMinimapMethods()

	if not addon.LDBIcon then
		if addon.Settings.Options.MinimapButton.angle ~= nil then
			OutfitterMinimapButton:SetPositionAngle(addon.Settings.Options.MinimapButton.angle)
		else
			OutfitterMinimapButton:SetPosition(addon.Settings.Options.MinimapButton.minimapX, addon.Settings.Options.MinimapButton.minimapY)
		end
	end

	Outfitter:ShowMinimapButton(addon.Settings.Options.MinimapButton.ShowButton)
end

function addon:GetMinimapDropdownItems(items)
	-- Just return if not initialized yet
	if not self.Initialized then
		return
	end

	-- Add controls for the addon
	items:AddCategoryTitle(self.cTitleVersion)
	items:AddFunction(self.cOpenOutfitter, function ()
		self:OpenUI()
		end)
	items:AddToggle(self.cAutoSwitch,
		function ()
			return self.Settings.Options.DisableAutoSwitch
		end, function (menu, value)
			self:SetAutoSwitch(self.Settings.Options.DisableAutoSwitch)
		end)

	-- Add the outfits
	self:GetMinimapOutfitItems(items)
end

function addon:GetMinimapOutfitItems(items)
	-- Just return if not initialized yet
	if not self.Initialized then
		return
	end

	--
	local inventoryCache = self:GetInventoryCache()
	local categoryOrder = self:GetCategoryOrder()

	for _, categoryID in ipairs(categoryOrder) do
		local categoryName = self["c"..categoryID.."Outfits"]
		local outfits = self:GetOutfitsByCategoryID(categoryID)

		if self:HasVisibleOutfits(outfits) then
			items:AddCategoryTitle(categoryName)

			for vIndex, outfit in ipairs(outfits) do
				if self:OutfitIsVisible(outfit) then
					local wearingOutfit = Outfitter:WearingOutfit(outfit)
					local missingItems, bankedItems = inventoryCache:GetMissingItems(outfit)
					local itemColor = nil

					if missingItems then
						itemColor = RED_FONT_COLOR
					elseif bankedItems then
						itemColor = Outfitter.BANKED_FONT_COLOR
					end

					items:AddToggleWithIcon(outfit:GetName(), self.OutfitBar:GetOutfitTexture(outfit), itemColor,
						function ()
							return wearingOutfit
						end, function (menu, value)
							local categoryID = outfit.CategoryID
							local doToggle = categoryID ~= "Complete"

							if IsModifierKeyDown() then
								self:AskSetCurrent(outfit)
							elseif doToggle
							and self:WearingOutfit(outfit) then
								self:RemoveOutfit(outfit)
							else
								self:WearOutfit(outfit)
							end
						end)
					--[[
					Outfitter:AddMenuItem(
							pFrame,
							outfit:GetName(),
							{CategoryID = categoryID, Index = vIndex},
							wearingOutfit, -- Checked
							nil, -- Level
							itemColor, -- Color
							nil, -- Disabled
							{icon = Outfitter.OutfitBar:GetOutfitTexture(outfit)})
					]]
				end
			end
		end
	end
end

function Outfitter:RestrictAngle(pAngle, pRestrictStart, pRestrictEnd)
	if pAngle <= pRestrictStart
	or pAngle >= pRestrictEnd then
		return pAngle
	end

	local vDistance = (pAngle - pRestrictStart) / (pRestrictEnd - pRestrictStart)

	if vDistance > 0.5 then
		return pRestrictEnd
	else
		return pRestrictStart
	end
end
