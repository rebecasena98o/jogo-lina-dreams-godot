extends Control


@onready var button: Button = $MarginContainer/Panel/HBoxContainer/VBoxContainer2/Button


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Arquivos/Scenes/Menu/main_menu.tscn")
