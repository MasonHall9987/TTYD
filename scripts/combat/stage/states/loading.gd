extends StageState

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	spawn_battlers()
	determine_turn_order()
	await delay(1.0)
	finished.emit(BEGIN, {})

func spawn_battlers() -> void:
	player_battler = player_spawner.spawn_battler(player_scene) as Battler
	enemy_battler = enemy_spawner.spawn_battler(enemy_scene) as Battler
	battlers.append(player_battler)
	battlers.append(enemy_battler)


func determine_turn_order() -> void:
	if player_starts_first:
		print_debug("Player starts first")
		turn_order.append(player_battler)
		turn_order.append(enemy_battler)
	else:
		print_debug("Enemy starts first")
		turn_order.append(enemy_battler)
		turn_order.append(player_battler)
