extends Control

export(bool) var replaceNull = true 
export(bool) var canClear = true 
export(bool) var canReceive = true 
export(float, 0.0, 1.0) var opacityPreview = .5 
export(Vector2) var size: Vector2 = Vector2(61, 60) setget _setSize
export(Texture) var image: Texture = null setget _setImage
export(Texture) var imagePreview: Texture = null setget _setImagePreview

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
	$image.rect_min_size = size
	$image.rect_size = size
	$preview.rect_min_size = size
	$preview.rect_size = size

var defaults: Dictionary = {}
export(Color) var color: Color = Color(0,0,0,0) setget _setColor
func _ready():
	defaults = {
		"color": color
	}
	



