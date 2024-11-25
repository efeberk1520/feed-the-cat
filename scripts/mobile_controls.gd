extends Node2D
var os := OS.get_name() 
@export var jump_and_camera := false
@onready var camera: Node2D = $camera
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if os == "Linux" or os == "Windows" or os == "X11" or os == "MacOs":
		visible = false
	if os == "Android" or os == "IOS":
		visible = true
	if jump_and_camera == true :
		camera.visible = true
	if jump_and_camera == false :
		camera.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
