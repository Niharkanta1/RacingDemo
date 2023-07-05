#
# @auther	Nihar
# @company	DeadW0Lf Games
#

extends VehicleBody3D
class_name Car

var max_rpm = 1000
var max_torque = 500

func _physics_process(delta: float) -> void:
	steering = lerp(steering, Input.get_axis("right", "left") * 0.5, 5*delta)
	var acceleration = Input.get_axis("back", "forward")
	var rpm = $BL.get_rpm()
	$BL.engine_force = acceleration * max_torque * (1-rpm/max_rpm)

	rpm = $BR.get_rpm()
	$BR.engine_force = acceleration * max_torque * (1-rpm/max_rpm)

