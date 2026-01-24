extends BattlerState


# Called when the node enters the scene tree for the first time.
@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	await battler.play_animation("attacking")
	battler.finished_attacking.emit()
	finished.emit(IDLE, {})
