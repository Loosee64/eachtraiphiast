extends Area2D

var objectID = "sheep"

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		InventorySignals.NEW_ITEM.emit(objectID)
		hide()
	
