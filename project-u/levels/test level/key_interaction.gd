extends Node2D

@export var item: InventoryItem

@onready var interaction_area = $InteractionArea

var player = null

func _ready():
    interaction_area.interact = Callable(self, "_on_interact")

func _on_interact():
    player.collect_item(item)

func _on_interaction_area_body_entered(body):
    player = body