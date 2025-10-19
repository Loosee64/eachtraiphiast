extends Node2D
@onready var click: AudioStreamPlayer = $Click

func _on_toggle_local_hide() -> void:
	ToggleMessage.HIDE_DIALOGUE.emit()


func _on_toggle_local_show() -> void:
	ToggleMessage.SHOW_DIALOGUE.emit()
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		click.play(0.1)
