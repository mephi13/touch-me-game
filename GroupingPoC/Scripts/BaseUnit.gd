extends KinematicBody2D

export var goal_path: NodePath
export var speed = 100
export onready var goal = get_node(goal_path)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func change_goal(path: NodePath):
	goal_path = path
	goal = get_node(goal_path)

func move_towards(goal_pos: Vector2):
	if (goal_pos - self.global_position).length() < 10.0:
		return
	else:
		look_at((goal_pos))
		move_and_slide(Vector2(speed, 0).rotated(rotation))
		
		#self.linear_velocity = 

func _physics_process(delta):
	move_towards(goal.global_position)
	
