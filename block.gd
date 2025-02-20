extends Control


var health : int

@export var colors : Array[Color]


func _ready() -> void:
	$Background.color = colors [randi() % colors.size()]
	health = randi_range(get_parent().min_blocks_health, get_parent().max_blocks_health)
	$HealthLabel.text = str(health)

func _process(delta: float) -> void:
	if get_parent().get_node("GameOverUI").is_game_over == false:
		position.y += get_parent().blocks_speed * delta


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("Bullet"):
		health -= 1
		$HealthLabel.text = str(health)
		area.queue_free()
		get_parent().score_increased()
		
		if health <= 0:
			get_parent().time = 10
			get_parent().update_time_text()
			queue_free()
