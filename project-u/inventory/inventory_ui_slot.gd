extends Panel

@onready var item_icon: Sprite2D = $CenterContainer/Panel/item_display
func update(item: InventoryItem):
	if !item:
		item_icon.visible = false
	else:
		item_icon.texture = item.icon
		item_icon.visible = true