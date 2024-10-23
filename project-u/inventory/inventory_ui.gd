extends Control

@onready var inventory: Inventory = preload("res://inventory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

var is_opened: bool = false

func _ready():
	update_inventory()
	close()

func update_inventory():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i])

func _process(delta):
	if Input.is_action_just_pressed("q"):
		if is_opened:
			close()
		else:
			open()

func open():
	visible = true
	is_opened = true

func close():
	visible = false
	is_opened = false