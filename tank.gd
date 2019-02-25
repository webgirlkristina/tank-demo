extends KinematicBody2D

export (int) var speed
export (float) var rotation_speed

var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed('ui_right'):
		rotation += rotation_speed * delta
	if Input.is_action_pressed('ui_left'):
		rotation -= rotation_speed * delta
	velocity = Vector2()
	if Input.is_action_pressed('ui_up'):
		velocity = Vector2(speed, 0).rotated(rotation)
	if Input.is_action_pressed('ui_down'):
		velocity = Vector2(-speed, 0).rotated(rotation)
	move_and_slide(velocity)