extends CharacterBody2D


const SPEED = 300.0
@onready var nav = $NavigationAgent2D
func _ready():
	nav.target_position = Vector2(0,0)

func _physics_process(delta):
	# Add the gravity.
	var direction = global_position.direction_to(nav.get_next_path_position())
	velocity = direction * SPEED * delta
	move_and_slide()
