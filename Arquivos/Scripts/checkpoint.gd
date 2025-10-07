extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		body.checkpoint_position = Vector2(position.x, position.y)
