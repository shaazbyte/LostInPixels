extends CharacterBody2D


const speed = 100
var crnt_dir = "none"

func _physics_process(delta):
	player_move(delta)
	
func player_move(delta):
	
	if Input.is_action_pressed("ui_right"):
		play_ani(1)
		crnt_dir = "right"
		velocity.x = speed
		velocity.y = 0
	
	elif Input.is_action_pressed("ui_left"):
		play_ani(1)
		crnt_dir = "left"
		velocity.x = -speed
		velocity.y = 0
	
	elif Input.is_action_pressed("ui_up"):
		play_ani(1)
		crnt_dir = "up"
		velocity.y = -speed
		velocity.x = 0
	
	elif Input.is_action_pressed("ui_down"):
		play_ani(1)
		crnt_dir = "down"
		velocity.y = speed
		velocity.x = 0
	
	else:
		play_ani(0)
		velocity.y = 0
		velocity.x = 0
	
	move_and_slide()

func play_ani(movement):
	var dir = crnt_dir
	var ani = $AnimatedSprite2D
	
	if dir == "right":
		ani.flip_h = false
		if movement == 1:
			ani.play("side_walk")
		elif movement == 0:
			ani.play("side_idle")
	
	if dir == "left":
		ani.flip_h = true
		if movement == 1:
			ani.play("side_walk")
		elif movement == 0:
			ani.play("side_idle")
	
	if dir =="up":
		ani.flip_h = true
		if movement == 1:
			ani.play("back_walk")
		elif movement == 0:
			ani.play("back_idle")
	
	if dir == 'down':
		ani.flip_h = true
		if movement == 1:
			ani.play("front_walk")
		elif movement == 0:
			ani.play("front_idle")
	
			
