extends CharacterBody2D


var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var pulo: AudioStreamPlayer2D = $Pulo

var run_speed_damping = 2
var speed = 180
var jump_valocity = -350
var checkpoint_position = self.position

func _ready() -> void:
	checkpoint_position = self.position
	print("Checkpoint_position: " + str(checkpoint_position))
	

func trigger_animation(velocity: Vector2, direction: int):

	if not is_on_floor():
		if velocity.x >= 0:
			$AnimatedSprite2D.play("jump_right")
		else:
			$AnimatedSprite2D.play("jump_left")
		
	else:
		
		if velocity.x != 0:
			if velocity.x > 0:
				$AnimatedSprite2D.play("right")
			else:
				$AnimatedSprite2D.play("left")
		else:
			$AnimatedSprite2D.play("idle")

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_valocity
		pulo.play()
	
	if Input.is_action_just_released("jump") and velocity.y < 0:
		velocity.y *= 0.5
	
	var direction = Input.get_axis("left", "right")
	
	if direction:
		velocity.x = lerp(velocity.x, speed * direction, run_speed_damping * delta)
	else:
		velocity.x = move_toward(velocity.x, 0.0 , speed * delta)
		
	trigger_animation(velocity, direction)
	move_and_slide()
