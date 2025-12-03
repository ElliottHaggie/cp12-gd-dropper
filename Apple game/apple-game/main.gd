extends Node2D

@onready var losescreen = get_node("lose screen")


func _on_apple_lost() -> void:
	losescreen.show()
	get_tree().paused = true
