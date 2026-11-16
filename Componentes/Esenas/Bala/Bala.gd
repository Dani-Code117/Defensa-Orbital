extends Area2D

onready var player : KinematicBody2D = get_tree().get_nodes_in_group("player")[0]

const SPEED = 200

func _ready():
	player.Can_shoot = false
	$AnimatedSprite.play()

func _physics_process(delta):
	position.y -= SPEED * delta



func _on_Bala_area_entered(area):
	if area.is_in_group("enemy") or area.is_in_group("meteoro"):
		queue_free()


func _on_VisibilityNotifier2D_screen_exited():
	if is_instance_valid(player):
		pass
	queue_free()
