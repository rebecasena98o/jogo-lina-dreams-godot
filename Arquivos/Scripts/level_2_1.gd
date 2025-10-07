extends Node2D

var ativado = false

func _ready() -> void:
	$Porta.scene_text = "res://Arquivos/Scenes/Level2/cutscene_boss.tscn"



func _on_lawei_pode_ir() -> void:
	if not ativado:
		$Pilar/AnimationPlayer.play("move")
		ativado = true
