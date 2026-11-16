extends Node2D

export (PackedScene) var Enemy
export (PackedScene) var Meteoro

var Tiempo_recortado = 5

func _ready():
	$Musica.play()
	$Tiempo_de_enemigo.start()
	$Tiempo_de_meteoro.start()
	randomize()


func _physics_process(delta):
	get_node("Estrellas 3").scroll_base_offset += Vector2(0,1) * 8 * delta
	get_node("Estrellas 2").scroll_base_offset += Vector2(0,1) * 12 * delta
	get_node("Estrellas 1").scroll_base_offset += Vector2(0,1) * 18 * delta


func _on_Tiempo_de_enemigo_timeout():
	if $HUD.game_over == false:
		get_node("Phat_de_enemigo/Spawn_de_enemigos").set_offset(randi())
		var enemy = Enemy.instance()
		add_child(enemy)
		enemy.position = get_node("Phat_de_enemigo/Spawn_de_enemigos").position
		$Tiempo_de_enemigo.wait_time = Tiempo_recortado
		$Tiempo_de_enemigo.start()


func _on_Tiempo_de_meteoro_timeout():
	if $HUD.game_over == false:
		$Phat_de_enemigo/Spawn_de_enemigos.set_offset(randi())
		var meteoro = Meteoro.instance()
		add_child(meteoro)
		meteoro.position = $Phat_de_enemigo/Spawn_de_enemigos.position
		$Tiempo_de_meteoro.wait_time = Tiempo_recortado
		$Tiempo_de_meteoro.start()


func _on_Tiempo_recortado_timeout():
	Tiempo_recortado -= GLOBAL.Random(0.05, 0.08)


func _on_HUD_Game_over():
	$Musica.stop()
