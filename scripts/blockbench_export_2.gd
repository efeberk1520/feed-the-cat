extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var atack = 0
var rng = RandomNumberGenerator.new()
var anim = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().create_timer(1).timeout
	animation_player.play("idle")
	await get_tree().create_timer(0.5).timeout
	animation_player.play("attack 1")
	await get_tree().create_timer(1.5).timeout
	animation_player.play("attack 2")
	await get_tree().create_timer(2.75).timeout
	animation_player.play("attack 3")
	await get_tree().create_timer(3.5).timeout
	animation_player.play("attack 4")
	await get_tree().create_timer(2).timeout
	animation_player.play("attack 4")
	await get_tree().create_timer(2).timeout
	animation_player.play("attack 1")
	await get_tree().create_timer(1.5).timeout
	animation_player.play("attack 3")
	await get_tree().create_timer(3.5).timeout
	animation_player.play("attack 2")
	await get_tree().create_timer(2.75).timeout
	animation_player.play("idle")
	await get_tree().create_timer(0.5).timeout
	animation_player.play("attack 1")
	await get_tree().create_timer(1.5).timeout
	animation_player.play("attack 2")
	await get_tree().create_timer(2.75).timeout
	animation_player.play("attack 3")
	await get_tree().create_timer(3.5).timeout
	animation_player.play("attack 4")
	await get_tree().create_timer(2).timeout
	animation_player.play("attack 4")
	await get_tree().create_timer(2).timeout
	animation_player.play("attack 1")
	await get_tree().create_timer(1.5).timeout
	animation_player.play("die")
	await get_tree().create_timer(2.4583).timeout
	get_tree().change_scene_to_file("res://scenes/cutscene_2_kinda.tscn")
