extends Node2D

export var grid_size := Vector2(20, 20)
export var cell_size := Vector2(80, 80)

export var grid: Resource = preload("res://GroupingPoC/Nodes/Grid.tres")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _draw():
	for row in range(gride.size[0]):
		for col in range(grid.size[1]):
			
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
