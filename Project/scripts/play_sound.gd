extends Area2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		animated_sprite_2d.play()
		audio_stream_player.play(7)

func _on_audio_stream_player_finished() -> void:
	animated_sprite_2d.stop()


func _on_object_item_picked() -> void:
	show()
