extends LineEdit

func _ready():
	connect("text_entered", self, "_on_text_entered")

func _on_text_entered(text):
	
	var node11 = get_node("/root/Node2D/Control/LineEdit/pos(1,1)")
	if text[0] == "R":
		node11.color = Color(1, 0, 0, 1)
	elif text[0] == "G":
		node11.color = Color(0, 1, 0, 1)
	elif text[0] == "B":
		node11.color = Color(0, 0, 1, 1)
	else:
		node11.color = Color(0, 0, 0, 0)
	
	var node12 = get_node("/root/Node2D/Control/LineEdit/pos(1,2)")
	if text[1] == "R":
		node12.color = Color(1, 0, 0, 1)
	elif text[1] == "G":
		node12.color = Color(0, 1, 0, 1)
	elif text[1] == "B":
		node12.color = Color(0, 0, 1, 1)
	else:
		node12.color = Color(0, 0, 0, 0)
	
	var node13 = get_node("/root/Node2D/Control/LineEdit/pos(1,3)")
	if text[2] == "R":
		node13.color = Color(1, 0, 0, 1)
	elif text[2] == "G":
		node13.color = Color(0, 1, 0, 1)
	elif text[2] == "B":
		node13.color = Color(0, 0, 1, 1)
	else:
		node13.color = Color(0, 0, 0, 0)
		
	var node14 = get_node("/root/Node2D/Control/LineEdit/pos(1,4)")
	if text[3] == "R":
		node14.color = Color(1, 0, 0, 1)
	elif text[3] == "G":
		node14.color = Color(0, 1, 0, 1)
	elif text[3] == "B":
		node14.color = Color(0, 0, 1, 1)
	else:
		node14.color = Color(0, 0, 0, 0)
		
	var node15 = get_node("/root/Node2D/Control/LineEdit/pos(1,5)")
	if text[4] == "R":
		node15.color = Color(1, 0, 0, 1)
	elif text[4] == "G":
		node15.color = Color(0, 1, 0, 1)
	elif text[4] == "B":
		node15.color = Color(0, 0, 1, 1)
	else:
		node15.color = Color(0, 0, 0, 0)
		
	var node21 = get_node("/root/Node2D/Control/LineEdit/pos(2,1)")
	if text[5] == "R":
		node21.color = Color(1, 0, 0, 1)
	elif text[5] == "G":
		node21.color = Color(0, 1, 0, 1)
	elif text[5] == "B":
		node21.color = Color(0, 0, 1, 1)
	else:
		node21.color = Color(0, 0, 0, 0)
		
	var node22 = get_node("/root/Node2D/Control/LineEdit/pos(2,2)")
	if text[6] == "R":
		node22.color = Color(1, 0, 0, 1)
	elif text[6] == "G":
		node22.color = Color(0, 1, 0, 1)
	elif text[6] == "B":
		node22.color = Color(0, 0, 1, 1)
	else:
		node22.color = Color(0, 0, 0, 0)
	
	var node23 = get_node("/root/Node2D/Control/LineEdit/pos(2,3)")
	if text[7] == "R":
		node23.color = Color(1, 0, 0, 1)
	elif text[7] == "G":
		node23.color = Color(0, 1, 0, 1)
	elif text[7] == "B":
		node23.color = Color(0, 0, 1, 1)
	else:
		node23.color = Color(0, 0, 0, 0)
		
	var node24 = get_node("/root/Node2D/Control/LineEdit/pos(2,4)")
	if text[8] == "R":
		node24.color = Color(1, 0, 0, 1)
	elif text[8] == "G":
		node24.color = Color(0, 1, 0, 1)
	elif text[8] == "B":
		node24.color = Color(0, 0, 1, 1)
	else:
		node24.color = Color(0, 0, 0, 0)
		
	var node31 = get_node("/root/Node2D/Control/LineEdit/pos(3,1)")
	if text[9] == "R":
		node31.color = Color(1, 0, 0, 1)
	elif text[9] == "G":
		node31.color = Color(0, 1, 0, 1)
	elif text[9] == "B":
		node31.color = Color(0, 0, 1, 1)
	else:
		node31.color = Color(0, 0, 0, 0)
	
	var node32 = get_node("/root/Node2D/Control/LineEdit/pos(3,2)")
	if text[10] == "R":
		node32.color = Color(1, 0, 0, 1)
	elif text[10] == "G":
		node32.color = Color(0, 1, 0, 1)
	elif text[10] == "B":
		node32.color = Color(0, 0, 1, 1)
	else:
		node32.color = Color(0, 0, 0, 0)
	
	var node33 = get_node("/root/Node2D/Control/LineEdit/pos(3,3)")
	if text[11] == "R":
		node33.color = Color(1, 0, 0, 1)
	elif text[11] == "G":
		node33.color = Color(0, 1, 0, 1)
	elif text[11] == "B":
		node33.color = Color(0, 0, 1, 1)
	else:
		node33.color = Color(0, 0, 0, 0)
	
	var node41 = get_node("/root/Node2D/Control/LineEdit/pos(4,1)")
	if text[12] == "R":
		node41.color = Color(1, 0, 0, 1)
	elif text[12] == "G":
		node41.color = Color(0, 1, 0, 1)
	elif text[12] == "B":
		node41.color = Color(0, 0, 1, 1)
	else:
		node41.color = Color(0, 0, 0, 0)
	
	var node42 = get_node("/root/Node2D/Control/LineEdit/pos(4,2)")
	if text[13] == "R":
		node42.color = Color(1, 0, 0, 1)
	elif text[13] == "G":
		node42.color = Color(0, 1, 0, 1)
	elif text[13] == "B":
		node42.color = Color(0, 0, 1, 1)
	else:
		node42.color = Color(0, 0, 0, 0)
	
	var node51 = get_node("/root/Node2D/Control/LineEdit/pos(5,1)")
	if text[14] == "R":
		node51.color = Color(1, 0, 0, 1)
	elif text[14] == "G":
		node51.color = Color(0, 1, 0, 1)
	elif text[14] == "B":
		node51.color = Color(0, 0, 1, 1)
	else:
		node51.color = Color(0, 0, 0, 0)
