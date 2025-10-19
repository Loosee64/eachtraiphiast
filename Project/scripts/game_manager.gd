extends Node2D

var PATH_START = "res://scenes/Levels/level"
var next_level_path

func change_level():
	var current_scene = get_tree().current_scene.scene_file_path
	var next_level_num = current_scene.to_int() + 1
	if next_level_num < 5:
		next_level_path = PATH_START + str(next_level_num) + ".tscn"
	else:
		next_level_path = PATH_START + "End.tscn"
	get_tree().change_scene_to_file(next_level_path)
