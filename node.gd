extends Node

func _ready() -> void:
	var model = VoxelBlockyModelMesh.new()
	var type = VoxelBlockyType.new()
	var attribs = []
	attribs.append(VoxelBlockyAttributeAxis.new())
	var flipAttrib := VoxelBlockyAttributeCustom.new()
	flipAttrib.attribute_name = &"flipped"
	flipAttrib.value_count = 2
	attribs.append(flipAttrib)
	
	type.attributes = attribs
	
	type.set_variant_model([&"flipped", 0, &"axis", 0], model)
	type.set_variant_model([&"flipped", 1, &"axis", 0], model)
	
	
	print(type._variant_models_data)
