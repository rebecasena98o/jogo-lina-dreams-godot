extends Node2D


var pilar1_atv = false
var pilar2_atv = false
var pilar3_atv = false

func _ready() -> void:
	$Porta.scene_text = "res://Arquivos/Scenes/Level4/level_4.tscn"

func _on_button_4_pilar_down() -> void:
	if not pilar1_atv:
		pilar1_atv = true
		$Pilares/Pilar/AnimationPlayer.play("down")


func _on_button_5_pilar_down() -> void:
	if not pilar2_atv:
		pilar2_atv = true
		$Pilares/Pilar2/AnimationPlayer.play("down")


func _on_button_6_pilar_down() -> void:
	if not pilar3_atv:
		pilar3_atv = true
		$Pilares/Pilar3/AnimationPlayer.play("down")
		
		



func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
