extends Node

func _ready() -> void:
	for i in range(1):
		var a = get_child(i)
		a.initObject(i)
