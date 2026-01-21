class_name Battler
extends Node2D

# Signals to update UI
signal health_changed(current: int, max: int)
signal died()

# The Resource File (.tres) goes here
@export var stats_resource: BattlerStats

# Runtime variables (These change during combat)
var current_health: int

func _ready() -> void:
	initialize()

func initialize() -> void:
	# IMPORTANT: If this is a unique character (like the player) that upgrades stats,
	# we want to ensure we aren't modifying the original file on disk for everyone.
	if stats_resource:
		# Copy stats to local variables
		current_health = stats_resource.max_health

# --- COMBAT LOGIC ---

func take_damage(amount: int) -> void:
	# Calculate damage reduction based on defense + buffs
	var effective_def: int = get_effective_stat("defense")
	var actual_damage: int = max(0, amount - effective_def)
	
	current_health = max(0, current_health - actual_damage)
	emit_signal("health_changed", current_health, stats_resource.max_health)
	
	print(name, " took ", actual_damage, " damage.")
	
	if current_health == 0:
		die()

func heal(amount: int) -> void:
	current_health = min(current_health + amount, stats_resource.max_health)
	emit_signal("health_changed", current_health, stats_resource.max_health)

func die() -> void:
	emit_signal("died")

# --- STATS & BUFFS ---

# Returns base stat + any active buffs/debuffs
func get_effective_stat(stat_name: String) -> int:
	var base_val: int = 0
	
	match stat_name:
		"strength": base_val = stats_resource.base_strength
		"defense": base_val = stats_resource.base_defense
		# Health is handled separately
	
			
	return base_val
