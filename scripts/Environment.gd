extends TileMap


# Called when the node enters the scene tree for the first time.
func _ready():
	var parser = XMLParser.new()
	parser.open("res://textures/isometric kenny/Isometric Tiles City/Spritesheet/cityTiles_sheet.xml")
	while parser.read() != ERR_FILE_EOF:
		if parser.get_node_type() == XMLParser.NODE_ELEMENT:
			var node_name = parser.get_node_name()
			var attributes_dict = {}
			for idx in range(parser.get_attribute_count()):
				attributes_dict[parser.get_attribute_name(idx)] = parser.get_attribute_value(idx)
			print("The ", node_name, " element has the following attributes: ", attributes_dict)


	
	
	var image = Image.new()
	image.load("res://textures/isometric kenny/Isometric Tiles City/PNG/cityTiles_000.png")
	# var t = ImageTexture.new
	# t.create_from_image(image)
	# $Sprite.texture = t

	get_node("/root/Arena/csharpnode").call("GetMap")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
