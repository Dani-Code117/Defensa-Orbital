extends Area2D

export (PackedScene) var Explocion
onready var HUD : CanvasLayer = get_tree().get_nodes_in_group("HUD")[0]

var speed
var Exploto : bool = false
onready var Metioro : int

func _ready():
	Metioro = GLOBAL.Random(1, 4)
	speed = GLOBAL.Random(42, 52)
	Animated_ctrl()

func _physics_process(delta):
	position.y += speed * delta

func Animated_ctrl():
	if Metioro == 1:
		$AnimatedSprite.animation = "Metioro 1"
	elif Metioro == 2:
		$AnimatedSprite.animation = "Metioro 2"
	elif Metioro == 3:
		$AnimatedSprite.animation = "Metioro 3"
	else:
		$AnimatedSprite.animation = "Metioro 4"

func Dead():
	Exploto = true
	queue_free()
	Explocion_ctrl()


func Explocion_ctrl():
	var explocion = Explocion.instance()
	explocion.global_position = $Punto_de_explocion.global_position
	get_tree().call_group("level", "add_child", explocion)

func _on_Metioro_body_entered(body):
	if body.is_in_group("player"):
		Dead()
		body.queue_free()


func _on_Metioro_area_entered(area):
	if area.is_in_group("shoot"):
		Dead()
		GLOBAL.Score += 5


func _on_VisibilityNotifier2D_screen_exited():
	if Exploto == false:
		HUD.Game_over()
	queue_free()
