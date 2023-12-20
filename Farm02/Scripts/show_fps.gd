extends Label

var frame_count : int = 0
var fps_timer : float = 0

func _process(delta: float) -> void:
	frame_count += 1
	fps_timer += delta

	if fps_timer >= 1.0:
		var fps: int = frame_count / fps_timer
		text = "" + str(fps)

		frame_count = 0
		fps_timer = 0
