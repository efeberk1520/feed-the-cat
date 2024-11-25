extends Button
@onready var shop: Node2D = $"../SHOP"
var opened := false
# Called when the node enters the scene tree for the first time.
func _process(delta: float) -> void:
	pass


func _on_area_3d_body_entered(body: CharacterBody3D) -> void:
	if opened == false:
		visible = true


func _on_area_3d_body_exited(body: CharacterBody3D) -> void:
	if opened == false:
		visible = false


func _on_pressed() -> void:
	opened = true
	shop.visible = true
	visible = false
