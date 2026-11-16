extends KinematicBody2D

export (PackedScene) var Shoot

onready var joystick : TouchScreenButton = get_tree().get_nodes_in_group("joystick")[0]

var SPEED = 100
onready var Motion = Vector2.ZERO
onready var Can_shoot : bool = true
onready var Screensize = get_viewport_rect().size

onready var Joystick = get_parent().get_node("res://Componentes/Esenas/HUD/Joystick/Joystick.tscn")

func _ready():
	$AnimatedSprite.play()


func _physics_process(delta):
	motion_ctrl()
	animation_ctrl()
	Motion = move_and_collide(Motion * delta)
	
	if Input.is_action_pressed("ui_accept") and Can_shoot:
		shoot_ctrl()


func get_axis() -> Vector2:
	var axis = Vector2.ZERO
	axis.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	axis.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	axis = joystick.get_value()
	return axis


func motion_ctrl():
	if get_axis() == Vector2.ZERO:
		Motion = Vector2.ZERO
	else:
		Motion = get_axis().normalized() * SPEED
	
	position.x = clamp(position.x, 0, Screensize.x)
	position.y = clamp(position.y, 0, Screensize.y)


func animation_ctrl():
	$AnimatedSprite.animation = "Movimiento"


func shoot_ctrl():
	var shoot = Shoot.instance()
	shoot.global_position = $Punto_de_Disparo.global_position
	get_tree().call_group("level", "add_child", shoot)
	$ShootTimer.start()


func _on_Timer_timeout():
	Can_shoot = true
