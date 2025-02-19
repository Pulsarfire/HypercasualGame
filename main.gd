extends Node

@export var bullet : PackedScene
@export var block : PackedScene
var bullet_speed : int = 500
var blocks_speed : int = 150
var min_blocks_health : int = 10
var max_blocks_health : int = 20
var blocks_amount_to_instantiate : int = 3

func _on_fire_rate_timer_timeout() -> void:
	var bullet_instance : Area2D = bullet.instantiate()
	add_child(bullet_instance)
	bullet_instance.position = $Player.position


func _on_spawner_timer_timeout() -> void:
	var spots : Array[int] = []
	spots.clear()
	
	for i in range(blocks_amount_to_instantiate):
		var random_spot : int = randi() % 5
		
		while spots.find(random_spot) != -1:
			random_spot = randi() % 5
		
		spots.append(random_spot)
	print(spots)
