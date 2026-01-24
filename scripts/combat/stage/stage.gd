extends Node2D

@onready var enemy_spawner: Node2D = $EnemySpawner
@onready var player_spawner: Node2D = $PlayerSpawner


@export var player_scene: PackedScene
@export var enemy_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
