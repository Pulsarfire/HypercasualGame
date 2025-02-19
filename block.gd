extends Control


var health : int

@export var colors : Array[Color]


func _ready() -> void:
	$Background.color = colors [randi() % colors.size()]
	health = randi_range(get_parent().min_blocks_health, get_parent().max_blocks_health)
	$HealthLabel.text = str(health)

func _process(delta: float) -> void:
	position.y += get_parent().blocks_speed * delta
