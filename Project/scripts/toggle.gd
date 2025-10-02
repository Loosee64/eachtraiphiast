extends Button

var visibleUI = true

signal localHide
signal localShow

func _on_pressed() -> void:
	if visibleUI:
		localHide.emit()
		visibleUI = false
	else:
		localShow.emit()
		visibleUI = true
