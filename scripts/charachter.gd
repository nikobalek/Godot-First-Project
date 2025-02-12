extends CharacterBody2D

@onready var animated_sprite = $AnimatedSprite2D
@onready var jump_sfx = $jump_sfx

const  SPEED = 150.0
const JUMP_VELOCITY = -280.0

var jumps = 0
var canJump = true
var canMove = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if is_on_floor():
			jumps = 0
			
	if Input.is_action_just_pressed("jump") and canJump:
		if jumps < 2:
			jump_sfx.play()
			velocity.y = JUMP_VELOCITY
			jumps += 1


	var direction = Input.get_axis("move-left", "move-right")
	
	#flip
	if direction > 0 and canMove:
		animated_sprite.flip_h = false
	elif direction < 0 and canMove: 
		animated_sprite.flip_h = true
	
	#animation
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("Idle")
		else:
			animated_sprite.play("run")
	else :
		animated_sprite.play("jump")
	#apply movemebt	
	if direction and canMove:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

