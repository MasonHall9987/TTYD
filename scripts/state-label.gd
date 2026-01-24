extends Label

@onready var state_machine: StateMachine = $"../StateMachine"


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	text = state_machine.state.name
