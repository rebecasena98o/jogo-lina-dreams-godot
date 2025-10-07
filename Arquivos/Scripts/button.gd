extends Area2D


signal pilar1
signal pilar2
signal pilar3
signal pilar4

signal plataforma

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$AnimatedSprite2D.play("pressed")
		emit_signal("pilar1")
		emit_signal("pilar2")
		emit_signal("pilar3")
		emit_signal("pilar4")
		emit_signal("plataforma")
