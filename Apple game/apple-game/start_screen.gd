extends Control
@onready var start_screen = get_node(".")

func _ready() -> void:
	get_tree().paused = true

func _on_start_button_pressed() -> void:
	Global.score = 0
	get_tree().paused = false
	start_screen.hide()
