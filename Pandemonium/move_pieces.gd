extends ColorRect

func get_drag_data(_pos):
	var cr = ColorRect.new()
	cr.color = color
	cr.rect_size = Vector2(50,50)
	set_drag_preview(cr)
	return color

func can_drop_data(_pos, data):
	return typeof(data) == TYPE_COLOR

func drop_data(_pos, data):
	color = data
