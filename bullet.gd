extends RigidBody2D

var direction:Vector2

func _physics_process(delta):
	apply_force(direction)
