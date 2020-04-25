extends Control

export var uid = "" 
export var group = "" 
export(float, 0.0, 1.0) var opacityPreview = .5 
export(Color) var color: Color = Color(0.25,0.25,0.25,1) setget _setColor
export(Vector2) var size: Vector2 = Vector2(60, 61) setget _setSize
export(Texture) var image: Texture = null setget _setImage
export(Texture) var imagePreview: Texture = null setget _setImagePreview


var defaults: Dictionary = {}
var _mouseRightButton: bool = false
var isDragging: bool = false


func _setColor(newValue) -> void:
	color = newValue
	if weakref($color).get_ref():
		$color.color = color
func _setImage(newValue) -> void:
	image = newValue
	if weakref($image).get_ref():
		$image.texture = image
func _setImagePreview(newValue) -> void:
	imagePreview = newValue
	if weakref($preview).get_ref():
		$preview.texture = imagePreview
func _setSize(newValue) -> void:
	size = newValue
	rect_min_size = size
	rect_size = size
	$color.rect_min_size = size
	$color.rect_size = size
	$image.rect_min_size = size
	$image.rect_size = size
	$preview.rect_min_size = size
	$preview.rect_size = size
	$touch.scale = (newValue * 64 / 2.0) / 1000.0

func _ready():
	defaults = {
		"color": color
	}

	for n in get_children():
		if "mouse_filter" in n:
			n.mouse_filter = MOUSE_FILTER_IGNORE

func _clearSlot() -> void:
	uid = ""
	$color.color = defaults["color"]
	$image.texture = null

func _on_touch_pressed() -> void:
	yield(get_tree().create_timer(.2), "timeout")
	if isDragging: return
	_clearSlot()


func get_drag_data(position):
	isDragging = true
	var previewPos = -($color.rect_size / 2)
	
	var dragPreview = self.duplicate()
	dragPreview.modulate.a = opacityPreview
	dragPreview.get_node("color").rect_position = previewPos
	dragPreview.get_node("image").rect_position = previewPos
	dragPreview.get_node("preview").rect_position = previewPos
	dragPreview.get_node("touch").hide()
	
	if dragPreview.image is Texture:
		dragPreview.get_node("color").hide()
	
	if dragPreview.imagePreview is Texture:
		dragPreview.get_node("preview").show()
		dragPreview.get_node("color").hide()
		dragPreview.get_node("image").hide()
	
	set_drag_preview(dragPreview)
	
	return self

func can_drop_data(position, data) -> bool:
	if data == self: return false
	var ret = false
	return ret


func drop_data(position, data) -> void:
	image = data["image"] 
	$color.color = data["color"]
	
	if data["image"] is Texture:
		$image.texture = data["image"] 
	else:
		$image.texture = null
			
	
	data.isDragging = false
