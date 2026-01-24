extends BattlerState


# Called when the node enters the scene tree for the first time.
func enter(previous_state_path: String, data := {}) -> void:
	await delay(1.0)
	finished.emit(IDLE, {})
