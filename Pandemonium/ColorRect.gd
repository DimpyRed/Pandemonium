extends ColorRect



func get_drag_data(_pos):
	#doesn't allow moving empty spaces
	if self.color == Color(0, 0, 0, 0):
		return false
	#copy a preview and set rect to opaque
	else:
		#initializes a new ColorRect (cr), takes it's color, size from the dragged piece
		var cr = ColorRect.new()
		cr.color = color
		cr.rect_size = Vector2(50, 50)
		set_drag_preview(cr)
		set_frame_color(Color(0, 0, 0, 0)) #sets dragged piece to opaque
		return cr.color


##happens on hover over
func can_drop_data(_pos, data):
	#if opaque allow moving piece
	if self.color == Color(0, 0, 0, 0):
		return typeof(data) == TYPE_COLOR
	#if not opaque disallow moving piece 
	else:
		return false

func drop_data(_pos, data):
#	var cursorShape = get_cursor_shape()
#	print(cursorShape)
#	if get_cursor_shape() != 0:
#		print('hiya buddy')
#		self.set_frame_color(color)
#	else:
#		set_frame_color(Color(0, 0, 0, 0))
		color = data

