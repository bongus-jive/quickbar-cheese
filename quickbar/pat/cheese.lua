do
	local swap = player.swapSlotItem()
	local itemId = params and params[1] or "perfectlygenericitem"

	if swap == nil then
		return player.setSwapSlotItem(itemId)
  end
  
	if root.itemDescriptorsMatch(swap, root.createItem(itemId)) then
		swap.count = (swap.count or 1) + 1
		return player.setSwapSlotItem(swap)
	end
  
	pane.playSound("/sfx/interface/clickon_error.ogg")
end