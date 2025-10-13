extends Area2D

var localID = 0
signal item_used(id)

func initObject(texture, id):
	get_child(1).texture = texture
	localID = id

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		item_used.emit(localID)
		hide()
