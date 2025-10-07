extends Control


@onready var button: Button = $VBoxContainer/VBoxContainer2/PanelContainer/HBoxContainer/Button
@onready var button_2: Button = $VBoxContainer/VBoxContainer2/PanelContainer/HBoxContainer/Button2
@onready var button_3: Button = $VBoxContainer/VBoxContainer2/PanelContainer/HBoxContainer/Button3

signal valor(x: int)



func _on_button_pressed() -> void:
	emit_signal("valor", 0)


func _on_button_2_pressed() -> void:
	emit_signal("valor", 1)


func _on_button_3_pressed() -> void:
	emit_signal("valor", 2)
