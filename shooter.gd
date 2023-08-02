extends Node2D

@export var bullet:PackedScene

var force = Vector2(15,15)
func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		var Bullet = bullet.instantiate()
		get_parent().add_child(Bullet)
		Bullet.initiator = self
		Bullet.global_position = global_position
		
	if Input.is_action_pressed("rotateL"):
		rotation -= 0.05
	if Input.is_action_pressed("rotateR"):
		rotation += 0.05
	
