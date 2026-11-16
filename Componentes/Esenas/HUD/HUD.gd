extends CanvasLayer

signal Game_over

var game_over = false

func _ready():
	GLOBAL.Score = 0

func _physics_process(delta):
	$Contenedor_de_puntaje/HBoxContainer/Puntaje.text = str(GLOBAL.Score)
	if game_over == true:
		Game_over()


func Game_over():
	emit_signal("Game_over")
	$Contenedor_de_game_over.visible = true
	if game_over == false:
		$Musica_de_game_over.play()
	game_over = true




func _on_Recontruir_pressed():
	get_tree().call_deferred("reload_current_scene")


func _on_Menu_pressed():
	get_tree().call_deferred("change_scene", "res://Componentes/Esenas/Menu/Menu.tscn")

func _on_Jugador_tree_exiting():
	Game_over()
