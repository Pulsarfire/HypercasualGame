extends Area2D

func _process(delta: float) -> void:
	position.y -= get_parent().bullet_speed * delta
