extends Node2D

var movement = 0

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if get_viewport().get_mouse_position().x > 1700:
			movement = 20
		elif get_viewport().get_mouse_position().x < 500:
			movement = -20
		else:
			movement = 0

func _process(_float) -> void:
		global_position.x += movement
		global_position.x = clamp(global_position.x, 0, 500)
