extends Button



func _on_pressed() -> void:
	get_node("Dialogue").get_child(1).hide()
	get_node("Dialogue").get_child(2).hide()
	
