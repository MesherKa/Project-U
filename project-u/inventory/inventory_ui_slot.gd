extends Panel

@onready var item_icon: Sprite2D = $CenterContainer/Panel/item_display

func update(slot: InventorySlot):
	if !slot.item:
		item_icon.visible = false
	else:
		item_icon.texture = slot.item.icon
		item_icon.visible = true