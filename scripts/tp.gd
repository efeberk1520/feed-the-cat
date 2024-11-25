extends Area3D

@export var  text = "ENTER"
@onready var button: Button = $Button
@export var scene = "res://scenes/street.tscn"
var entered = false
@export var here = false
# Called when the node enters the scene tree for the first time.
func _on_body_entered(_body: CharacterBody3D) -> void:
	button.visible = true
	here = true
	

func _on_body_exited(body: CharacterBody3D) -> void:
	button.visible = false
	here = true
func _process(delta: float) -> void:
	button.text = text
	if entered == true:
		get_tree().change_scene_to_file(scene)


func _on_button_pressed() -> void:
	if  here == true :
		entered = true
