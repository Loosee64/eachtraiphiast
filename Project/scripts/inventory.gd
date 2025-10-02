extends Node

var inventoryArray = []

func _on_object_object_picked(id: Variant) -> void:
	inventoryArray.append(id)
	print(id + " added to inventory")
