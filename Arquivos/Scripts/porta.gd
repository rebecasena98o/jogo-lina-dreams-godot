extends Area2D
@onready var label: Label = $Label

var scene_text = ""

func _ready() -> void:
	label.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		label.visible = true
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interagir") and label.visible:
		get_tree().change_scene_to_file(scene_text)



func _on_body_exited(_body: Node2D) -> void:
	label.visible = false
