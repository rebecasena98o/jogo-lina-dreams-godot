extends Area2D


signal pilarDown
var flag = false



func _on_body_entered(body: Node2D) -> void:
	if not flag and body.name == "Player":
		flag = true
		print("teste")
		print(self)
		$AnimatedSprite2D.play("pressed")
		emit_signal("pilarDown")
