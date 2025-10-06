extends Node

var inventoryArray = []

func _ready() -> void:
	InventorySignals.connect("NEW_ITEM", on_local_object_picked)

func on_local_object_picked(id: Variant) -> void:
	inventoryArray.append(id)
	print(id + " added to inventory")
