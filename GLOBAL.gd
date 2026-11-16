extends Node

onready var Score : int


onready var rng : RandomNumberGenerator = RandomNumberGenerator.new()


func Random(min_number, max_number):
	rng.randomize()
	var random = rng.randf_range(min_number, max_number)
	return random
