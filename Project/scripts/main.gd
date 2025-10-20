extends Node2D
@onready var click: AudioStreamPlayer = $Click
@onready var correct_audio: AudioStreamPlayer = $"Sound Buffers/Object1AudioBuffer"
@onready var win_sound: AudioStreamPlayer = $"Win Sound"

func _ready() -> void:
	GameState.play_correct_audio.connect(correct_play)
	GameState.play_win_sound.connect(win_play)

func correct_play():
	correct_audio.play()

func win_play():
	win_sound.play()

func _on_toggle_local_hide() -> void:
	ToggleMessage.HIDE_DIALOGUE.emit()


func _on_toggle_local_show() -> void:
	ToggleMessage.SHOW_DIALOGUE.emit()
	

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		click.play(0.1)
