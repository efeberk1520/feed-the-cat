extends Button

@export var val = 5
func _on_pressed() -> void:
	if global_values.cat_food > 0 :
		global_values.cat_happiness += val
		global_values.cat_food -= 1
