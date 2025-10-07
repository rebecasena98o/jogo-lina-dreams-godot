extends Control


func _on_animated_sprite_2d_animation_finished() -> void:
	get_tree().change_scene_to_file("res://Arquivos/Scenes/Level2/level_2.tscn")
