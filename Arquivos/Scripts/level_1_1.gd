extends Node2D
@onready var portal: Area2D = $Portal


func _ready() -> void:
	portal.scene_text= "res://Arquivos/Scenes/Leve1/transicao_dormir.tscn"
	
func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
