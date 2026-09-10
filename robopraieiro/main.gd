extends Node2D

# gota
@onready var drop = get_node('Gota')
@onready var player = get_node('RoboPraieiro')
var gravity = 8
var speed = 10
func _ready() -> void:
	drop.position.y = 300
func _physics_process(delta: float) -> void:
	drop.position.y += gravity
	if( drop.position.y > 700):
		drop.position.x = randi_range(1, 1200)
		drop.position.y = -100
		
	if Input.is_action_pressed("walk_right"):
		player.position.x += speed
	if Input.is_action_pressed("walk_left"):
		player.position.x -= speed
