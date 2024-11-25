extends Area3D

@onready var button: Button = $Button

# Called when the node enters the scene tree for the first time.
func _on_body_entered(body: CharacterBody3D) -> void:
	button.visible = true


func _on_body_exited(body: CharacterBody3D) -> void:
	button.visible = false # Replace with function body.
