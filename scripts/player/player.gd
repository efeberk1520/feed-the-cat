extends CharacterBody3D
@onready var camera_pivot: Node3D = $"camera pivot"
@onready var animation_player: AnimationPlayer = $blockbench_export/AnimationPlayer
@onready var cam_animation_player: AnimationPlayer = $"camera pivot/AnimationPlayer"


const SPEED = 10.0
const JUMP_VELOCITY = 4.5
var rot = 1
@onready var blockbench_export: Node3D = $blockbench_export
@export var up := "up"
@export var down := "down"
@export var left := "left"
@export var right := "right"
@onready var timer: Timer = $"camera pivot/Timer"


func _physics_process(delta: float) -> void:
	if Input.is_action_pressed(right):
		blockbench_export.rotation_degrees.y = -90
		animation_player.play("walk")
	elif Input.is_action_pressed(left):
		blockbench_export.rotation_degrees.y = 90
		animation_player.play("walk")
	elif Input.is_action_pressed(up):
		blockbench_export.rotation_degrees.y = 0
		animation_player.play("walk")
	elif Input.is_action_pressed(down):
		blockbench_export.rotation_degrees.y = 180
		animation_player.play("walk")
	elif velocity.x == 0 and velocity.z == 0:
		animation_player.play("idle")

	if Input.is_action_just_pressed("rotate left"):
		cam_animation_player.play("right")
		timer.start()
		await get_tree().create_timer(0.2).timeout
		blockbench_export.rotation_degrees.y = 0
		rotation_degrees.y += 90
	if Input.is_action_just_pressed("rotate right"):
		cam_animation_player.play("left")
		timer.start()
		await get_tree().create_timer(0.2).timeout
		blockbench_export.rotation_degrees.y = 0
		rotation_degrees.y -= 90
	
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir := Input.get_vector(left, right, up, down)
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()


func _on_timer_timeout() -> void:
	cam_animation_player.play("normal")
