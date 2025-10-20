extends Area2D

func _ready() -> void:
	GameState.show_portal.connect(_on_show_portal)

func _on_show_portal():
	show()

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		GameManager.change_level()
		hide()
