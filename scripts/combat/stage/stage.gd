extends Node2D

@onready var enemy_spawner: Node2D = $EnemySpawner
@onready var player_spawner: Node2D = $PlayerSpawner


@export var player_scene: PackedScene
@export var enemy_scene: PackedScene
@export var player_starts_first: bool = true

var player_battler: Battler
var enemy_battler: Battler

var turn_order: Array[Battler]

var battlers: Array[Battler]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
