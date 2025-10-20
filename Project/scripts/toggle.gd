extends Button

var visibleUI = false
@onready var character: Node2D = $"../Character"
@onready var filepath: Label = $"../Filepath"
@onready var dialogue: CanvasLayer = $"../Dialogue"

var dialogueResource

signal localHide
signal localShow

func _ready() -> void:
	dialogueResource = load(filepath.text)
	GameState.set_toggle_off.connect(set_toggle_off)

func _on_pressed() -> void:
	if visibleUI:
		character.hide()
		visibleUI = false
		DialogueManager.dialogue_ended.emit(dialogueResource)
		localHide.emit()
	else:
		character.show()
		visibleUI = true
		localShow.emit()
		DialogueManager.show_dialogue_balloon(dialogueResource, "start")

func set_toggle_off():
	character.hide()
	visibleUI = false
	localHide.emit()
