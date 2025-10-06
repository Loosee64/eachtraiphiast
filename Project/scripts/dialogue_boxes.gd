extends Control

var dialogue = load("res://test.dialogue")

func _ready():
	ToggleMessage.connect("SHOW_DIALOGUE", showUI)
	ToggleMessage.connect("HIDE_DIALOGUE", hideUI)

func hideUI():
	get_child(0).get_child(0).hide()
	get_child(0).get_child(1).hide()
	
	get_child(1).get_child(0).hide()
	get_child(1).get_child(1).hide()

func showUI():
	get_child(0).get_child(0).show()
	get_child(0).get_child(1).show()
	
	get_child(1).get_child(0).show()
	get_child(1).get_child(1).show()
	DialogueManager.show_dialogue_balloon(dialogue, "start")
