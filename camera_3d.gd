extends Camera3D

func _physics_process(delta: float) -> void:
	rotate_x(0.5 * delta)
