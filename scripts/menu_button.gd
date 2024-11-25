extends Button

@export var scene := "res://scenes/street.tscn"
@export var set_inf := false
@export var change := true
@export var change_game := false
func _on_pressed() -> void:
	get_tree().change_scene_to_file(scene)
	if set_inf == true:
		global_values.inf = true
	elif set_inf == false:
		global_values.inf = false
	if change == true:
		global_values.cat_happiness = 10
		global_values.cat_food = 5
		global_values.money = 0
		global_values.lose = false
		global_values.fight = false
	if change_game == true:
		global_values.game_start = true
	elif change_game == false:
		global_values.game_start = false
