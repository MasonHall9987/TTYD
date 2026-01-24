extends StageState

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	spawn_battlers()
	await delay(1.0)
	finished.emit(BEGIN, {})

func spawn_battlers() -> void:
	player_battler = player_spawner.spawn_battler(player_scene) as Battler
	enemy_battler = enemy_spawner.spawn_battler(enemy_scene) as Battler
