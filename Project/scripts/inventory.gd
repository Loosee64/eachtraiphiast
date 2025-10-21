extends Node

@onready var animation_buffer: AnimatedSprite2D = $"../Animation Buffer"
@onready var sound_buffers: Node = $"../Sound Buffers"

var inventoryArray = []
var index = 0

func _ready() -> void:
	InventorySignals.connect("NEW_ITEM", on_local_object_picked)

func on_local_object_picked(id: Variant) -> void:
	inventoryArray.append(id)
	get_child(id).initObject(animation_buffer.sprite_frames.get_frame_texture("default", id), id, sound_buffers.get_child(id))
	print(str(id) + " added to inventory")



func _on_object_item_used(id: Variant) -> void:
	if id == 0:
		GameState.itemUsed = true
