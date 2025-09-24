extends Button





	
	


func _on_pressed() -> void:
	if get_node("../Player").get_child(0).visible == true:
		get_node("../Player").get_child(0).hide()
		get_node("../Player").get_child(1).hide()
	
		get_node("../NPC").get_child(0).hide()
		get_node("../NPC").get_child(1).hide()
	else:
		get_node("../Player").get_child(0).show()
		get_node("../Player").get_child(1).show()
	
		get_node("../NPC").get_child(0).show()
		get_node("../NPC").get_child(1).show()
