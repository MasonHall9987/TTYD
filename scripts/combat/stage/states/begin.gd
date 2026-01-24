extends StageState


# Called when the node enters the scene tree for the first time.

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	await delay(1.0)
	finished.emit(COMBAT, {})
