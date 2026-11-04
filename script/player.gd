extends CharacterBody2D


const speed = 300

func _physics_process(delta):
	player_move(delta)
	
func player_move(delta):
	
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		velocity.y = 0
	
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		velocity.y = 0
	
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -speed
		velocity.x = 0
	
	elif Input.is_action_pressed("ui_down"):
		velocity.y = speed
		velocity.x = 0
	
	else:
		velocity.y = 0
		velocity.x = 0
	
	move_and_slide()
