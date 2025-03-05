Outfitter._MinimapButton = {}
local OUTFITTER_MINIMAP_BUTTON_RADIUS = 80
if LE_EXPANSION_LEVEL_CURRENT > 0 and LE_EXPANSION_LEVEL_CURRENT >= LE_EXPANSION_DRAGONFLIGHT then
	OUTFITTER_MINIMAP_BUTTON_RADIUS = 100
end

function Outfitter._MinimapButton:Construct()
	self:RegisterForDrag("LeftButton")
	self:RegisterForClicks("LeftButtonDown", "LeftButtonDown", "RightButtonUp")
	self.CurrentOutfitTexture = self:CreateTexture(nil, "BACKGROUND")
	self.CurrentOutfitTexture:SetWidth(22)
	self.CurrentOutfitTexture:SetHeight(22)
	self.CurrentOutfitTexture:SetPoint("TOPLEFT", self, "TOPLEFT", 5, -4)
	SetPortraitToTexture(self.CurrentOutfitTexture, "Interface\\Icons\\INV_Chest_Cloth_21")
end

function Outfitter._MinimapButton:MouseDown()
	-- Remember where the cursor was in case the user drags

	local vCursorX, vCursorY = GetCursorPosition()

	vCursorX = vCursorX / self:GetEffectiveScale()
	vCursorY = vCursorY / self:GetEffectiveScale()

	OutfitterMinimapButton.CursorStartX = vCursorX
	OutfitterMinimapButton.CursorStartY = vCursorY

	local vCenterX, vCenterY = OutfitterMinimapButton:GetCenter()
	local vMinimapCenterX, vMinimapCenterY = Minimap:GetCenter()

	OutfitterMinimapButton.CenterStartX = vCenterX - vMinimapCenterX
	OutfitterMinimapButton.CenterStartY = vCenterY - vMinimapCenterY

	OutfitterMinimapButton.EnableFreeDrag = IsModifierKeyDown()
end

function Outfitter._MinimapButton:DragStart()
	Outfitter.SchedulerLib:ScheduleUniqueRepeatingTask(0, self.UpdateDragPosition, self)
end

function Outfitter._MinimapButton:DragEnd()
	Outfitter.SchedulerLib:UnscheduleTask(self.UpdateDragPosition, self)
end

function Outfitter._MinimapButton:UpdateDragPosition()
	-- Remember where the cursor was in case the user drags

	local vCursorX, vCursorY = GetCursorPosition()

	vCursorX = vCursorX / self:GetEffectiveScale()
	vCursorY = vCursorY / self:GetEffectiveScale()

	local vCursorDeltaX = vCursorX - OutfitterMinimapButton.CursorStartX
	local vCursorDeltaY = vCursorY - OutfitterMinimapButton.CursorStartY

	--

	local vCenterX = OutfitterMinimapButton.CenterStartX + vCursorDeltaX
	local vCenterY = OutfitterMinimapButton.CenterStartY + vCursorDeltaY

	if OutfitterMinimapButton.EnableFreeDrag then
		self:SetPosition(vCenterX, vCenterY)
	else
		-- Calculate the angle and set the new position

		local vAngle = math.atan2(vCenterX, vCenterY)

		self:SetPositionAngle(vAngle)
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

function Outfitter._MinimapButton:SetPosition(pX, pY)
	gOutfitter_Settings.Options.MinimapButton.minimapPos = nil
	gOutfitter_Settings.Options.MinimapButton.minimapX = pX
	gOutfitter_Settings.Options.MinimapButton.minimapY = pY

	OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", pX, pY)
end

function Outfitter._MinimapButton:SetPositionAngle(pAngle)
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

	local vCenterX = math.sin(vAngle) * OUTFITTER_MINIMAP_BUTTON_RADIUS
	local vCenterY = math.cos(vAngle) * OUTFITTER_MINIMAP_BUTTON_RADIUS

	OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", vCenterX - 1, vCenterY - 1)
	OutfitterMinimapButton:SetPoint("CENTER", Minimap, "CENTER", vCenterX + 1, vCenterY + 1)

	gOutfitter_Settings.Options.MinimapButton.minimapPos = vAngle
end

function Outfitter:GetMinimapDropdownItems(items)
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

function Outfitter:GetMinimapOutfitItems(items)
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

function Outfitter._MinimapButton:HideMenu()
	if not self.dropDownMenu then
		return
	end

	self.dropDownMenu:Hide()
	self.dropDownMenu = nil
end

function Outfitter._MinimapButton:ShowMenu()
	assert(not self.dropDownMenu, "can't show the minimap menu while it's already up")

	-- Create the items
	local items = Outfitter:New(Outfitter.UIElementsLib._DropDownMenuItems, function ()

		-- Close the menu after a short delay when a menu item is selected
		Outfitter.SchedulerLib:ScheduleTask(0.1, function ()
			self:HideMenu()
		end)
	end)

	-- Get the items
	Outfitter:GetMinimapDropdownItems(items)

	-- Show the menu
	self.dropDownMenu = Outfitter:New(Outfitter.UIElementsLib._DropDownMenu)
	self.dropDownMenu:Show(items, "TOPRIGHT", self, "TOPRIGHT", -20, -20)
	self.dropDownMenu.cleanup = function ()
		self.dropDownMenu = nil
	end
end

function Outfitter._MinimapButton:ToggleMenu()
	-- Play a sound
	PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)

	-- Hide the menu if it's showing
	if self.dropDownMenu then
		self.dropDownMenu:Hide()
		return
	end

	-- Get the items
	items = Outfitter:New(Outfitter.UIElementsLib._DropDownMenuItems, function ()
		Outfitter.SchedulerLib:ScheduleTask(0.1, function ()
			if not self.dropDownMenu then
				return
			end

			self.dropDownMenu:Hide()
		end)
	end)
	Outfitter:GetMinimapDropdownItems(items)

	-- Show the menu
	self.dropDownMenu = Outfitter:New(Outfitter.UIElementsLib._DropDownMenu)
	self.dropDownMenu:Show(items, "TOPRIGHT", self, "TOPRIGHT", -20, -20)
	self.dropDownMenu.cleanup = function ()
		self.dropDownMenu = nil
	end
end

-- Create the minimap button in code rather than XML
function Outfitter._MinimapButton:CreateMinimapButton()
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

	OutfitterMinimapButton.Inherit = Outfitter.Inherit
	OutfitterMinimapButton:Inherit(Outfitter._MinimapButton)

	-- Script Handlers
	OutfitterMinimapButton:SetScript("OnDragStart", function(self)
		self:HideMenu()
		self:DragStart()
	end)

	OutfitterMinimapButton:SetScript("OnDragStop", function(self)
		self:DragEnd()
	end)

	OutfitterMinimapButton:SetScript("OnMouseDown", function(self)
		self:MouseDown()
	end)

	OutfitterMinimapButton:SetScript("OnClick", function(self, pButton, down)
		if pButton == "LeftButton" then
			self:ToggleMenu()
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
		elseif pButton == "RightButton" then
			self:HideMenu()
			Outfitter:ToggleUI(true)
		end
	end)

	OutfitterMinimapButton:SetScript("OnEnter", function(self)
		Outfitter.AddNewbieTip(self, Outfitter.cMinimapButtonTitle, 1, 1, 1, Outfitter.cMinimapButtonDescription, 1)
	end)

	OutfitterMinimapButton:SetScript("OnLeave", function(self)
		GameTooltip:Hide()
	end)

end