extends Area2D

var objectID = "sheep"

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		InventorySignals.NEW_ITEM.emit(objectID)
		hide()
