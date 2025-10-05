extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.timeline_started.connect(open_letterbox)
	Dialogic.timeline_ended.connect(close_letterbox)

func open_letterbox():
	%animation.play("LetterboxCamein")

func close_letterbox():
	%animation.play_backwards("LetterboxCamein")
