extends Node2D

func _on_toggle_local_hide() -> void:
	ToggleMessage.HIDE_DIALOGUE.emit()


func _on_toggle_local_show() -> void:
	ToggleMessage.SHOW_DIALOGUE.emit()
