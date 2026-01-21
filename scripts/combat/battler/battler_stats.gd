class_name BattlerStats
extends Resource

# This file defines the "Base Stats" of a unit.
# Create .tres files from this script for generic entities.

@export_group("Base Attributes")
@export var character_name: String = "Unnamed"
@export var max_health: int = 100
@export var base_strength: int = 10
@export var base_defense: int = 5
