extends Node

var money := 0
var cat_happiness := 10
var time=0.0
var cat_food := 5
var inf := false
var lose := false
var fight := false
var game_start := false

func _process(delta):
	time+=delta
	if time>=3.0 and fight == false and game_start == true:
		time=0.0
		cat_happiness -= 1
	if cat_happiness >= 1000 and inf == false and fight == false and game_start == true:
		get_tree().change_scene_to_file("res://scenes/cutscene_1_kinda.tscn")
		fight = true
	if cat_happiness <= 0 and lose == false and fight == false and game_start == true:
		lose = true
		get_tree().change_scene_to_file("res://scenes/lose.tscn")
func _ready() -> void:
	print(OS.get_name())
