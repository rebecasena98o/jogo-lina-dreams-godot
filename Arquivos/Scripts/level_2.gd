extends Node2D


@onready var anim_pilar1: AnimationPlayer = $Pilares/Pilar/AnimationPlayer
@onready var anim_pilar2: AnimationPlayer = $Pilares/Pilar2/AnimationPlayer
@onready var anim_pilar3: AnimationPlayer = $Pilares/Pilar3/AnimationPlayer
@onready var anim_pilar4: AnimationPlayer = $Pilares/Pilar4/AnimationPlayer



var pilar1_atv = false
var pilar2_atv = false
var pilar3_atv = false
var pilar4_atv = false
var pilar5_atv = false
var pilar6_atv = false

func _ready() -> void:
	$Porta.scene_text = "res://Arquivos/Scenes/Level2/level_2_1.tscn"



func _on_button_1_pilar_1() -> void:
	if not pilar1_atv:
		$Pilares/Pilar/AnimationPlayer.play("up")
		pilar1_atv = true

func _on_button_1_pilar_2() -> void:
	if not pilar2_atv:
		$Pilares/Pilar2/AnimationPlayer.play("up")
		pilar2_atv = true


func _on_button_1_pilar_3() -> void:
	if not pilar3_atv:
		$Pilares/Pilar3/AnimationPlayer.play("up")
		pilar3_atv = true


func _on_button_1_pilar_4() -> void:
	if not pilar4_atv:
		$Pilares/Pilar4/AnimationPlayer.play("up")
		pilar4_atv = true
	
func _on_button_2_pilar_5() -> void:
	if not pilar5_atv:
		$Pilares/Pilar5/AnimationPlayer.play("down")
		pilar5_atv = true
		
func _on_button_3_pilar_6() -> void:
	if not pilar6_atv:
		$Pilares/Pilar6/AnimationPlayer.play("down")
		pilar6_atv = true
	


func _on_audio_stream_player_2d_finished() -> void:
	$AudioStreamPlayer2D.play()
