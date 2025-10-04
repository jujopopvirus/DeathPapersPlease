extends Node
class_name Character_Information #library 


enum COD_ENUM { #Enumerator 
	HOUSEHOLDHAZARD,
	VEHICLE,
	STUNTS,
	SELFHARM,
	CANNIBALISM,
	MURDER,
	POISON,
	DISEASE,
	WILDANMLS,
	DISASTER
}

@export var char_name : String
@export var COD : COD_ENUM
