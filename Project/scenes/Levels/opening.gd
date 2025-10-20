extends Node2D

var dialogueResource = load("res://opening.dialogue")
@onready var balloon: CanvasLayer = $ExampleBalloon

func _ready() -> void:
	DialogueManager.show_dialogue_balloon_scene(balloon ,dialogueResource, "start")
