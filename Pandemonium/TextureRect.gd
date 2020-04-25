extends TextureRect

func get_drag_data(_pos):
	var tr = TextureRect.new()
	set_drag_preview(tr)
	return tr

func can_drop_data(_pos, data):
	return typeof(data) == texture

func drop_data(_pos, data):
	texture = data
