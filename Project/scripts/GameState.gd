extends Node
signal play_correct_audio
signal show_portal
signal set_toggle_off
signal play_win_sound

var itemUsed = false
var itemFound = false
var spoken_to = false

func reset():
	itemFound = false
	itemUsed = false
	spoken_to = false

func object_sound():
	play_correct_audio.emit()

func set_spoken_to():
	spoken_to = true

func set_portal():
	show_portal.emit()

func set_toggle():
	set_toggle_off.emit()

func win_sound_play():
	play_win_sound.emit()
