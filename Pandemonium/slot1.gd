extends Control

var defaults: Dictionary = {}
var _mouseRightButton: bool = false
var isDragging: bool = false

export(bool) var canReceive = true 

#background color for slot
export(Color) var color: Color = Color(0,0,0,0) setget _setColor
func _setColor(newValue) -> void:
	color = newValue

#sets dragging image opacity to half
export(float, 0.0, 1.0) var opacityPreview = .5 

#slot size
#export(Vector2) var size: Vector2 = Vector2(64, 64) setget _setSize

#slot image
export(Texture) var image: Texture = null setget _setImage
func _setImage(newValue) -> void:
	image = newValue
	if weakref($image).get_ref():
		$image.texture = image

#dragging preview image
export(Texture) var imagePreview: Texture = null setget _setImagePreview
func _setImagePreview(newValue) -> void:
	imagePreview = newValue
	if weakref($preview).get_ref():
		$preview.texture = imagePreview

func _clearSlot() -> void:
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
	dragPreview.get_node("qtd").hide()
	
	if dragPreview.image is Texture:
		dragPreview.get_node("color").hide()
	
	if dragPreview.imagePreview is Texture:
		dragPreview.get_node("preview").show()
		dragPreview.get_node("color").hide()
		dragPreview.get_node("image").hide()
	
	set_drag_preview(dragPreview)
	return self

func can_drop_data(position, data) -> bool:
	if !canReceive: return false
	if data == self: return false
	var ret = false
	return ret






