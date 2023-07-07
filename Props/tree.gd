#
# @auther	Nihar
# @company	DeadW0Lf Games
#

extends StaticBody3D


func _ready() -> void:
	scale = Vector3.ONE * randf_range(0.9, 1.3)
	rotation.y = randf_range(0, 90)
