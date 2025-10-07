extends Area2D

signal pilar6

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$AnimatedSprite2D.play("pressed")
		emit_signal("pilar6")
