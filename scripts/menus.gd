extends Control

@export var twhite := false
@onready var money: Label = $money
@onready var cat_happines: Label = $"cat happines"
@onready var happines: Sprite2D = $Happines
@onready var catfood: Label = $catfood
@onready var texture_button: TextureButton = $TextureButton
@onready var inf_mode: Label = $"inf mode"

func _process(delta: float) -> void:
	cat_happines.text = "cat happines: " + str(global_values.cat_happiness)
	money.text = "money: " + str(global_values.money)
	catfood.text = "cat food: " + str(global_values.cat_food)
	if global_values.inf == true:
		inf_mode.visible = true
	if global_values.inf == false:
		inf_mode.visible = false
	if  twhite == true:
		money.set("theme_override_colors/font_color","WHITE")
		cat_happines.set("theme_override_colors/font_color","WHITE")
		catfood.set("theme_override_colors/font_color","WHITE")
	if  twhite == false:
		money.set("theme_override_colors/font_color","BLACK")
		cat_happines.set("theme_override_colors/font_color","BLACK")
		catfood.set("theme_override_colors/font_color","BLACK")
func _on_texture_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
