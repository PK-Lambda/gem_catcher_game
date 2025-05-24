extends Node2D

# Pulling Nodes and gives me opportunity to refer them directly as variable
@onready var icon: Sprite2D = $Icon
@onready var icon_2: Sprite2D = $Icon2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Icon moves to the right  
	icon.position.x += 10.0 * delta #Same as $Icon.position.x = $Icon.position.x + 50.0 * delta but no need for $ because we declared variables above 
	# Icon2 spins around
	icon_2.rotation += 1.0 * delta
