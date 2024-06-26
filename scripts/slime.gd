extends Node2D

var speed:int = 50;

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D

var direction:int = 1; 

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = 1;
		animated_sprite_2d.flip_h = false;
	if ray_cast_left.is_colliding():
		direction = -1;
		animated_sprite_2d.flip_h = true;
	position.x += direction * speed * delta;
