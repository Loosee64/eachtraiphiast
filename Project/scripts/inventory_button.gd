extends TextureButton

@onready var inventory: TextureRect = $"../Inventory"


func _on_toggled(toggled_on: bool) -> void:
	if toggled_on:
		inventory.show()
	else:
		inventory.hide()
