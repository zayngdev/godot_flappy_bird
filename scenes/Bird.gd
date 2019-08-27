extends RigidBody2D

func _ready():
	_input(true)
	_process(true)
	_physics_process(true)
	pass

func _process(delta):
	print(rad2deg(get_rotation()))
	if abs(rad2deg(get_rotation())) > 30:
		set_rotation((deg2rad(-30)))
	pass
	pass
	
func _physics_process(delta):
	
	pass
	
	
func flap():
	#set_linear_velocity(Vector2(get_linear_velocity().x, -150))
	set_angular_velocity(-3)
	
	
func _input(event):
	if Input.is_action_pressed("flap"):
		flap()
	pass
	