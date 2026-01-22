# Boilerplate class to get full autocompletion and type checks for the `player` when coding the player's states.
# Without this, we have to run the game to see typos and other errors the compiler could otherwise catch while scripting.
class_name BattlerState extends State

const IDLE = "Idle"
const SELECTING = "Selecting"
const ATTACKING = "Attacking"
const DEFENDING = "Defending"
const DAMAGED = "Damaged"
const MOVING = "Moving"
const DEAD = "Dead"

var battler: Battler


func _ready() -> void:
	await owner.ready
	battler = owner as Battler
	assert(battler != null, "The BattlerState state type must be used only in the battler scene. It needs the owner to be a Battler node.")
