extends CharacterBody2D

signal lost

func _ready():
	velocity = Vector2(0, 120)
	position.x = randi_range(52, 1100)
	
	
func silly():
		position.y = -10
		position.x = randi_range(52, 1100)
		velocity.y = 200
	
	
func _physics_process(delta: float) -> void:
	move_and_slide()
	
	if position.y > get_viewport().size.y + 10:
		lost.emit()
		silly()

func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.Score_Gained()
	silly()
	pass
