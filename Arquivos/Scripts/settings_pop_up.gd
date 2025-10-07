extends PanelContainer
@onready var button_close: TextureButton = $"Panel/MarginContainer/HBoxContainer/VBoxContainer3/HBoxContainer/Button Close"
@onready var h_slider: HSlider = $Panel/MarginContainer/HBoxContainer/VBoxContainer2/HBoxContainer/VBoxContainer/HSlider


func _on_button_close_pressed() -> void:
	queue_free()

func _ready() -> void:
	h_slider.value = DadosGlobais.volume

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("escape"):
		queue_free()


func _on_h_slider_drag_ended(value_changed: bool) -> void:
	if value_changed:
		DadosGlobais.volume = h_slider.value
