# Boilerplate class to get full autocompletion and type checks for the `player` when coding the player's states.
# Without this, we have to run the game to see typos and other errors the compiler could otherwise catch while scripting.
class_name StageState extends State

const IDLE = "Idle"
const LOADING = "Loading"
const BEGIN = "Begin"
const COMBAT = "Combat"
const END = "End"
const CLEAN_UP = "CleanUp"

var player_scene: PackedScene
var enemy_scene: PackedScene
var stage: Node2D
var player_spawner: Node2D
var enemy_spawner: Node2D

var player_battler: Battler:
	get: return stage.player_battler
	set(value): stage.player_battler = value

var enemy_battler: Battler:
	get: return stage.enemy_battler
	set(value): stage.enemy_battler = value


func _ready() -> void:
	await owner.ready
	stage = owner
	player_spawner = stage.player_spawner
	enemy_spawner = stage.enemy_spawner
	player_scene = stage.player_scene
	enemy_scene = stage.enemy_scene
