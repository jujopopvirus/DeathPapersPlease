extends Node
class_name Character_Information_Resource #library 


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

enum TOD_ENUM {
	Morning,
	Afternoon,
	Night
}

@export var character_name : String
@export var cause_of_death : COD_ENUM
@export var character_id : Texture2D
@export var time_of_death :TOD_ENUM
