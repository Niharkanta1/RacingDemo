#
# @auther	Nihar
# @company	DeadW0Lf Games
#

extends Node3D

@export var smooth_speed = 2.5
var direction = Vector3.FORWARD

func _physics_process(delta: float) -> void:
	var current_velocity = get_parent().get_linear_velocity()
	current_velocity.y = 0
	if current_velocity.length_squared() > 1:
		direction = lerp(direction, -current_velocity.normalized(), smooth_speed*delta)

	global_transform.basis = get_rotation_from_direction(direction)


func get_rotation_from_direction(look_dir: Vector3) -> Basis:
	look_dir = look_dir.normalized()
	var x_axis = look_dir.cross(Vector3.UP)
	return Basis(x_axis, Vector3.UP, -look_dir)