extends CanvasLayer
var settings_pop_up = preload("res://Arquivos/Scenes/Menu/settings_pop_up.tscn")
@onready var button_start: Button = $MarginContainer/VBoxContainer/HBoxContainer2/VBoxContainer2/Button_start

func _ready() -> void:
	button_start.grab_focus()


func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Arquivos/Scenes/Leve1/cutscene.tscn")


func _on_button_settings_pressed() -> void:
	print("Configurações")
	var settings_scene = settings_pop_up.instantiate()
	$".".add_child(settings_scene)
	

func _on_button_quit_pressed() -> void:
	get_tree().quit()
