extends RigidBody2D


const SPEED = 50.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var turn_direction := Input.get_axis("ui_left", "ui_right")
	var movement := Input.is_action_pressed("ui_up")
	if turn_direction:
		angular_velocity += turn_direction * SPEED * delta
	if movement:
		linear_velocity -= transform.y
	angular_velocity = clamp(angular_velocity, -3,3)
		#linear_velocity.x += move_toward(linear_velocity.x, 0, SPEED)
	
