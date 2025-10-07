extends Area2D

var scene_text = ""
@onready var label: Label = $Label

func _ready() -> void:
	label.visible = false


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interagir") and label.visible:
		get_tree().change_scene_to_file(scene_text)


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		label.visible = true
