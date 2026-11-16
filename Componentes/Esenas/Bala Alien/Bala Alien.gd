extends Area2D

const SPEED = 90

func _ready():
	$AnimatedSprite.play()


func _physics_process(delta):
	position.y += SPEED * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Bala_Alien_body_entered(body):
	if body.is_in_group("player"):
		body.queue_free()
		queue_free()
