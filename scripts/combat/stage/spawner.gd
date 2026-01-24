extends Node2D

# Called when the node enters the scene tree for the first time.


func spawn_battler(battler_scene: PackedScene) -> Battler:
	var battler: Battler = battler_scene.instantiate()
	add_child(battler)
	return battler