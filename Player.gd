extends CharacterBody2D


@export var speed : float = 700.0


func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction.normalized() * speed
	
	move_and_slide()
