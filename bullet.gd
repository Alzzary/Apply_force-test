extends RigidBody2D

var initiator

func _physics_process(delta):
	apply_force(initiator.force)
