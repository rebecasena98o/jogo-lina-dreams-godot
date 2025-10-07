extends Node2D

func _ready() -> void:
	$Porta.scene_text = "res://Arquivos/Scenes/Leve1/level_1_1.tscn"
	


func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
