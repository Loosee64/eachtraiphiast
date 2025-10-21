extends TextureButton

@onready var inventory: TextureRect = $"../Inventory"

func _ready() -> void:
	GameState.open_inventory.connect(open)

func _on_toggled(toggled_on: bool) -> void:
	if toggled_on:
		inventory.show()
	else:
		inventory.hide()

func open():
	inventory.show()
