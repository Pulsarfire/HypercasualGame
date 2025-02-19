extends Area2D

var min_x : int = 40
var max_x : int = 500

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("click"):
		position.x = event.position.x
		position.x = clamp(position.x, min_x, max_x)
