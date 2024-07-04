extends CharacterBody2D

@export var cell_size : int = 16


func _process(delta) -> void:
	_process_input()

func _process_input() -> void:
	if Input.is_action_just_pressed("ui_right"):
		_move(Vector2.RIGHT)
	if Input.is_action_just_pressed("ui_down"):
		_move(Vector2.DOWN)
	if Input.is_action_just_pressed("ui_left"):
		_move(Vector2.LEFT)
	if Input.is_action_just_pressed("ui_up"):
		_move(Vector2.UP)


func _move(direction: Vector2) -> void:
	var space_rid = get_world_2d().space
	var space_state = PhysicsServer2D.space_get_direct_state(space_rid)
	var query = PhysicsRayQueryParameters2D.create(global_position, global_position + direction * cell_size)
	var result = space_state.intersect_ray(query)
	if result:
		if result.collider.is_in_group("Wall"):
			return
	position += direction * cell_size
