extends Node2D

func _ready():
	ToggleMessage.connect("SHOW_DIALOGUE", showCharacter)
	ToggleMessage.connect("HIDE_DIALOGUE", hideCharacter)

func showCharacter():
	show()

func hideCharacter():
	hide()
