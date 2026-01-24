extends StageState

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	spawn_battlers()
	finished.emit(BEGIN, {})

func spawn_battlers() -> void:
	assert(player_spawner != null, "Player Spawner Does not exist")
	player_spawner.spawn_battler(player_scene)
	enemy_spawner.spawn_battler(enemy_scene)
