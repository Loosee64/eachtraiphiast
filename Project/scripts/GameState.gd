extends Node
@onready var correct_object_audio: AudioStreamPlayer = $"/root/Node2D/Sound Buffers/Object1AudioBuffer"

var itemUsed = false
var itemFound = false
var spoken_to = false

func object_sound():
	correct_object_audio.play()

func set_spoken_to():
	spoken_to = true
