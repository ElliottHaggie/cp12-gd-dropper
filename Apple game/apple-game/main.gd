extends Node2D

@onready var losescreen = get_node("lose screen")
@onready var lives_label = $Panel2/LivesLabel
var lives = 3

func _ready():
	lives_label.text = "Lives: " + str(lives)

func _on_apple_lost() -> void:
	lives -=1
	print ("Lives:", lives)
	lives_label.text = "Lives: " + str(lives)
	
	if lives <= 0:
		losescreen.visible = true
		get_tree().paused = true
