extends Node

func _ready() -> void:
	for i in range(3):
		var a = get_child(i)
		a.initObject(i)
