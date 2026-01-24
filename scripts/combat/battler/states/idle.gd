extends BattlerState

@warning_ignore("unused_parameter")
func enter(previous_state_path: String, data := {}) -> void:
	battler.animation_player.play("idle")
	await battler.animation_player.animation_finished
	pass


# We know that the stage needs to see who attacks first 

# Stage script get the reference to each battler via @ onready 
