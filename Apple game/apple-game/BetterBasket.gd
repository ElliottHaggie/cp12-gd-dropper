extends CharacterBody2D

func _physics_process(delta: float) -> void:
	
	if is_on_wall():
		velocity.x = 0
	if Input.is_physical_key_pressed(KEY_D):
		velocity.x += 10
	
	if Input.is_physical_key_pressed(KEY_A):
		velocity.x -= 10
		
	move_and_slide()
