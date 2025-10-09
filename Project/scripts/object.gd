extends Area2D

var objectID = -1
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("click"):
		InventorySignals.NEW_ITEM.emit(objectID)
		hide()

func initObject(frame):
	animated_sprite_2d.set_frame(frame)
	print(frame)
