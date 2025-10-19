extends Node
@onready var correct_object_audio: AudioStreamPlayer = $"/root/Node2D/Sound Buffers/Object1AudioBuffer"
@onready var portal: Area2D = $"/root/Node2D/Portal"
@onready var toggle: Button = $"/root/Node2D/Toggle"

var itemUsed = false
var itemFound = false
var spoken_to = false

func object_sound():
	correct_object_audio.play()

func set_spoken_to():
	spoken_to = true

func set_portal():
	portal.show()

func set_toggle():
	toggle.set_toggle_off()
