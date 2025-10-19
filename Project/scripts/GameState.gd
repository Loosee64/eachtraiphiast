extends Node
@onready var correct_object_audio: AudioStreamPlayer = $"/root/Node2D/Sound Buffers/Object1AudioBuffer"

var itemUsed = false

func object_sound():
	correct_object_audio.play(7)
