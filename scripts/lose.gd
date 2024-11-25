extends Node2D
@onready var label: Label = $Label
@onready var menu_button: Button = $Label/menu_button
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = "Your"
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat"
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat sad"
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat sad you "
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat sad you losed"
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat sad you losed play"
	await get_tree().create_timer(0.08).timeout
	label.text = "Your cat sad you losed play again"
	await get_tree().create_timer(0.08).timeout
	menu_button.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
