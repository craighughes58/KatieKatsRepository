extends Node

@onready var animated_sprite_2d = $AnimatedSprite2D
@export var animNames: Array
var index = 0
var hasFullyIterated = false
var rng = RandomNumberGenerator.new()



func _on_pressed():
	if(animated_sprite_2d.is_playing()):return
	#play animation
	animated_sprite_2d.play(animNames[index])
	#if every animation has been played in order then it will switch to random choice mode
	if(!hasFullyIterated && index == animNames.size()-1): hasFullyIterated = true
	if(hasFullyIterated):
		index = rng.randi_range(0,animNames.size()-1)
	#iternate normally
	else:
		index += 1
	
	pass # Replace with function body.
