extends Area2D


signal pilar5
signal plataforma2


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$AnimatedSprite2D.play("pressed")
		emit_signal("pilar5")
		emit_signal("plataforma2")
