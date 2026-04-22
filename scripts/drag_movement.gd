class_name DragMovementComponent

extends Node2D

var is_selected := false
var mouse_offset := Vector2.ZERO
var body: Node2D = null

func _ready() -> void:
	if not body:
		body = get_parent()

func _process(delta: float) -> void:
	if body and is_selected:
		follow_mouse()

func follow_mouse() -> void:
	body.position = get_global_mouse_position() + mouse_offset

func _on_area_2d_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT: 
		if event.is_pressed():
			mouse_offset = body.position - get_global_mouse_position()
			is_selected = true
		else: 
			is_selected = false
