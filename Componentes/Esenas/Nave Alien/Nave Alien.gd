extends Area2D

export (PackedScene) var Explosion
export (PackedScene) var Shoot
onready var HUD : CanvasLayer = get_tree().get_nodes_in_group("HUD")[0]

var speed
var Exploto : bool = false


func _ready():
	$AnimatedSprite.play()
	speed = GLOBAL.Random(32, 42)


func _physics_process(delta):
	position.y += speed * delta


func Dead_enemy():
	Exploto = true
	queue_free()
	Explosion_ctrl()


func Explosion_ctrl():
	var explocion = Explosion.instance()
	explocion.global_position = $Punto_de_Explocion.global_position
	get_tree().call_group("level", "add_child", explocion)


func _on_Nave_Alien_body_entered(body):
	if body.is_in_group("player"):
		Dead_enemy()
		body.queue_free()


func _on_Nave_Alien_area_entered(area):
	if area.is_in_group("shoot"):
		Dead_enemy()
		GLOBAL.Score += 10


func _on_Tiempo_de_disparo_timeout():
	Shoot_ctrl()
	$Tiempo_de_disparo.wait_time = GLOBAL.Random(1,4)
	$Tiempo_de_disparo.start()

func Shoot_ctrl():
	var shootAli = Shoot.instance()
	shootAli.global_position = $Punto_de_Explocion.global_position
	get_tree().call_group("level", "add_child", shootAli)


func _on_VisibilityNotifier2D_screen_exited():
	if Exploto == false:
		HUD.Game_over()
	queue_free()
