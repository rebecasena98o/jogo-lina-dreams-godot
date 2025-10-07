extends Control

@export var animation_player: AnimationPlayer
@export var autoplay = false

func _ready() -> void:
	$AudioStreamPlayer2D.play()
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("next") and not animation_player.is_playing():
		animation_player.play()


func pause():
	if autoplay == false:
		animation_player.pause()


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://Arquivos/Scenes/Level3/cutscene_final.tscn")
