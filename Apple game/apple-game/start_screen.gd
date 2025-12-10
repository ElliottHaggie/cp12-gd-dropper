extends Control
@onready var start_screen = get_node(".")

func _ready() -> void:
	get_tree().paused = true

func _on_start_button_pressed() -> void:
	Global.score = 0
	Global.endless_mode = false
	Global._wingate_Gen()
	get_tree().paused = false
	Global._regular_score_update()
	start_screen.hide()


func _on_endless_start_button_pressed() -> void:
	Global.score = 0
	Global.endless_mode = true
	get_tree().paused = false
	Global._endless_score_update()
	start_screen.hide()
