extends Area3D


func _on_body_entered(body: CharacterBody3D) -> void:
	get_tree().reload_current_scene()
