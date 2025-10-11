extends Area2D

var objectID = -1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D2
@onready var animation_buffer: AnimatedSprite2D = $"../../Animation Buffer"

func _input_event(viewport: Viewport, event: InputEvent, shape_idx: int) -> void:
	if event.is_action_pressed("click"):
		InventorySignals.NEW_ITEM.emit(objectID)
		self.hide()

func initObject(frame):
	animated_sprite_2d.sprite_frames = animation_buffer.sprite_frames
	animated_sprite_2d.set_frame(frame)
	objectID = frame
