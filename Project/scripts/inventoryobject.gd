extends Area2D
@onready var play_sound: Area2D = $PlaySound
@onready var audio_stream_player: AudioStreamPlayer = $PlaySound/AudioStreamPlayer

var localID = 0
signal item_used(id)
signal item_picked

func initObject(texture, id, audio):
	get_child(1).texture = texture
	localID = id
	item_picked.emit()
	play_sound.show()
	audio_stream_player.stream = audio.stream

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		item_used.emit(localID)
		hide()
