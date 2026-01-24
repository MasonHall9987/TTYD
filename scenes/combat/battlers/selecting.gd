extends BattlerState


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func enter(previous_state_path: String, data := {}) -> void:
	await delay(1.0)
	finished.emit(ATTACKING, {})
