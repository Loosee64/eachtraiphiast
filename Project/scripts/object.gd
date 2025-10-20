extends Area2D

var objectID = -1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D2
@onready var animation_buffer: AnimatedSprite2D = $"../../Animation Buffer"
@onready var sound_buffers: Node = $"../../Sound Buffers"
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer
@onready var filepath: Label = $"../../Filepath"
@onready var dialogue: CanvasLayer = $"../../Dialogue"
@onready var dialogueBuffer: CanvasLayer = $"../../Dialogue"
var dialogueResource

func _ready() -> void:
	dialogueResource = load(filepath.text)

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		InventorySignals.NEW_ITEM.emit(objectID)
		audio_stream_player.play()
		if objectID == 0:
			GameState.itemFound = true
		DialogueManager.show_dialogue_balloon(dialogueResource, "searching")
		self.hide()

func initObject(frame):
	animated_sprite_2d.sprite_frames = animation_buffer.sprite_frames
	animated_sprite_2d.set_frame(frame)
	objectID = frame
	audio_stream_player.stream = sound_buffers.get_child(objectID).stream
