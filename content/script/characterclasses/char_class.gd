extends Node
class_name Character_Information


enum COD_ENUM {
	HHH,
	VEHICLE,
	STUNTS,
	SELFHARM,
	CANNI,
	MURDR,
	POISON,
	DISEASE,
	WILDANMLS
}

@export var char_name : String
@export var COD : COD_ENUM
