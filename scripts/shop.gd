extends Node2D
@onready var button_2: Button = $Button2
@onready var button_3: Button = $Button3
@onready var button_4: Button = $Button4
@onready var shop: Node2D = $"."
@onready var button: Button = $"../Button"
# Called when the node enters the scene tree for the first time.	
func _on_button_2_pressed() -> void:
	if global_values.money >= 10:
		global_values.money -= 10
		global_values.cat_food += 1


func _on_texture_button_pressed() -> void:
	shop.visible = false
	button.opened = false
