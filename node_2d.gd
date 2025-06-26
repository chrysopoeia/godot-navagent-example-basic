extends Node2D


func _input(event):
	if event.is_action_pressed("ui_accept"):
		$Sprite2D/NavigationAgent2D.target_position = get_global_mouse_position()


func _physics_process(delta):
	$Sprite2D.position = $Sprite2D.position.move_toward(
		$Sprite2D/NavigationAgent2D.get_next_path_position(), delta*20
	)



func _on_navigation_agent_2d_waypoint_reached(details:Dictionary):
	print("waypoint_reached")


func _on_navigation_agent_2d_velocity_computed(safe_velocity:Vector2):
	print("velocity_computed")


func _on_navigation_agent_2d_target_reached():
	print("target_reached")


func _on_navigation_agent_2d_path_changed():
	print("path_changed")


func _on_navigation_agent_2d_navigation_finished():
	print("navigation_finished")


func _on_navigation_agent_2d_link_reached(details:Dictionary):
	print("link_reached")

