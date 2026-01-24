extends Node2D

@export var battler_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_battler()

func spawn_battler() -> void:
	var battler = battler_scene.instantiate()
	add_child(battler)
