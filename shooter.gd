extends Node2D

@export var bullet:PackedScene

var force:float = 25
var direction:Vector2 = Vector2.UP

func _physics_process(delta):
	if Input.is_action_just_pressed("fire"):
		var Bullet = bullet.instantiate() # instantiate the bullet
		get_parent().add_child(Bullet) #add the bullet to the level
		var direction = Vector2(cos(rotation),sin(rotation)) #get the shooter's rotation and convert it to a vector that has the same direction
		Bullet.direction = direction * force #give that direction a constant force
		Bullet.apply_impulse(direction*force) #apply an initial impulse
		Bullet.global_rotation = global_rotation #apply the shooter's rotation
		Bullet.global_position = global_position #put the node at the correct position
		
		#also don't forget to check your sprites rotations, as they are all rotated 90° if you use Vector2.UP as initial vector
		
	if Input.is_action_pressed("right"):
		rotation -= 0.05
	if Input.is_action_pressed("left"):
		rotation += 0.05
	
