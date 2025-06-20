extends Area2D

const SPEED: float = 100.0

# Called when the node enters the screen tree for the first time.

func _ready() -> void:
	pass

# Called every frame. 'delta" is the elapsed time since the previous frame

func _process(delta:float) -> void:
	position.y += SPEED + delta
	
	if position.y > get_viewport_rect().end.y:
		print("Gem fell off")
		set_process(false)
		queue_free()
