extends TextureButton

@onready var working: Node2D = $".."
var vırus = preload("res://subscenes/virus.tscn")
var rng = RandomNumberGenerator.new()

func _ready() -> void:
	position.x = rng.randf_range(128, 1024)
	position.y = rng.randf_range(128, 512)
func _on_pressed() -> void:
	var create = vırus.instantiate()
	working.add_child(create)
	position.x = rng.randf_range(128, 1024)
	position.y = rng.randf_range(128, 512)
	global_values.money += working.money_per_press
	working.money_per_press += 1
