extends Node2D


func _ready() -> void:
	$Background/Porta.scene_text = "res://Arquivos/Scenes/Level4/level_4_2.tscn"

func _on_button_1_plataforma() -> void:
	$Plataformas/Plataforma3/AnimationPlayer.play("move")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "move":
		$Plataformas/Plataforma3/AnimationPlayer.play("RESET")
		
	


func _on_button_2_plataforma_2() -> void:
	$Plataformas/Plataforma4/AnimationPlayer.play("move")


func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
