extends Area2D

signal object_picked(id)
var objectID = "sheep"

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		object_picked.emit(objectID)
