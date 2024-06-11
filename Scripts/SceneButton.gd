extends Button

@export_file var scenePath
#this may be able to be gathered from the animation data
@export var delayTime: float
@export var animationName: String
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if scenePath == null:
		return
	#play animation
	#wait
	await get_tree().create_timer(delayTime).timeout
	#change Scene
	get_tree().change_scene_to_file(scenePath)
	pass # Replace with function body.
