extends CharacterBody2D

@export var inventory: Inventory

@export var speed = 400

func get_input():
	var input_direction = Input.get_vector("movement_left", "movement_right", "movement_up", "movement_down")
	velocity = input_direction * speed

func _physics_process(delta):
	get_input()
	move_and_slide()

func collect_item(item: InventoryItem):
	inventory.insert(item)
