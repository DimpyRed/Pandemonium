extends TextureButton

func get_drag_data(_pos):
	# Use another colorpicker as drag preview
	var tb = TextureButton.new()
	tb.rect_size = Vector2(60, 61)
	set_drag_preview(tb)
	# Return color as drag data
	return texture_normal


func can_drop_data(_pos, data):
	return typeof(data) == texture_normal


func drop_data(_pos, data):
	color = data
