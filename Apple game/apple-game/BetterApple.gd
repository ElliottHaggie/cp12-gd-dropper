extends CharacterBody2D

signal lost
var velocity_max = 200

func _ready():
	velocity = Vector2(0, 120)
	position.x = randi_range(52, get_viewport().size.x - 52)
	
	
func silly():
		position.y = -10
		position.x = randi_range(52, get_viewport().size.x - 52)
		velocity.y = velocity_max
		velocity_max += 1
	
	
func _physics_process(delta: float) -> void:
	velocity.y += 0.5
	move_and_slide()
	
	if position.y > get_viewport().size.y + 20:
		lost.emit()
		silly()

func _on_area_2d_body_entered(body: Node2D) -> void:
	Global.Score_Gained()
	silly()
