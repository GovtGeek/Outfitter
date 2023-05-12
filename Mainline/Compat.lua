local API = {}; OutfitterAPI = API;
local IS_WOW1002   = select(4, GetBuildInfo()) >= 100002 or nil;

OutfitterAPI.IsWoW1002 = IS_WOW1002;

function API:GetContainerItemLink(...)
    if C_Container and C_Container.GetContainerItemLink then return C_Container.GetContainerItemLink(...) end
  return GetContainerItemLink(...)
end

function API:GetContainerItemInfo(...)
    if C_Container and C_Container.GetContainerItemInfo then
        local containerInfo = C_Container.GetContainerItemInfo(...)
        if containerInfo then
            return containerInfo.iconFileID
        end
        return
    end
  return GetContainerItemInfo(...)
end

function API:ContainerIDToInventoryID(...)
    if C_Container and C_Container.ContainerIDToInventoryID then return C_Container.ContainerIDToInventoryID(...) end
  return ContainerIDToInventoryID(...)
end

function API:GetContainerNumFreeSlots(...)
    if C_Container and C_Container.GetContainerNumFreeSlots then return C_Container.GetContainerNumFreeSlots(...) end
  return GetContainerNumFreeSlots(...)
end

function API:UseContainerItem(...)
    if C_Container and C_Container.UseContainerItem then return C_Container.UseContainerItem(...) end
  return UseContainerItem(...)
end

function API:GetContainerNumSlots(...)
    if C_Container and C_Container.GetContainerNumSlots then return C_Container.GetContainerNumSlots(...) end
  return GetContainerNumSlots(...)
end

function API:PickupContainerItem(...)
    if C_Container and C_Container.PickupContainerItem then return C_Container.PickupContainerItem(...) end
  return PickupContainerItem(...)
end

function API:ShowContainerSellCursor(...)
    if C_Container and C_Container.ShowContainerSellCursor then return C_Container.ShowContainerSellCursor(...) end
  return ShowContainerSellCursor(...)
end

function API:GetNumTrackingTypes(...)
    if C_Minimap and C_Minimap.GetNumTrackingTypes then return C_Minimap.GetNumTrackingTypes(...) end
    return GetNumTrackingTypes(...)
end

function API:GetTrackingInfo(...)
    if C_Minimap and C_Minimap.GetTrackingInfo then return C_Minimap.GetTrackingInfo(...) end
    return GetTrackingInfo(...)
end

function API:SetTracking(...)
    if C_Minimap and C_Minimap.SetTracking then return C_Minimap.SetTracking(...) end
    return SetTracking(...)
end
