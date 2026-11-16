extends Control

func _on_Start_pressed():
	get_tree().change_scene("res://Componentes/Esenas/Nivel/Nivel.tscn")


func _on_Exit_pressed():
	get_tree().quit()


func _on_Salida_pressed():
	$Historia.position.y = -128


func _on_HistoriaButton_pressed():
	$Historia.position.y = 48
