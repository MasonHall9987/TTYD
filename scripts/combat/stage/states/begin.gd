extends StageState


# Called when the node enters the scene tree for the first time.

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	determine_turn_order()
	finished.emit(COMBAT, {})


func determine_turn_order() -> void:
	if player_starts_first:
		print_debug("Player starts first")
		turn_order.append(player_battler)
		turn_order.append(enemy_battler)
	else:
		print_debug("Enemy starts first")
		turn_order.append(enemy_battler)
		turn_order.append(player_battler)
