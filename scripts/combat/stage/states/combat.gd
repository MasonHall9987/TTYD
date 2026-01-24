extends StageState

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	connect_battler_signals()
	await delay(1.0)
	turn_order[0].state_machine._transition_to_next_state("Selecting")

func _next_turn() -> void:
	turn_order.append(turn_order.pop_front())
	turn_order[0].state_machine._transition_to_next_state("Selecting")

func connect_battler_signals() -> void:
	for battler in battlers:
		battler.finished_attacking.connect(_next_turn)
