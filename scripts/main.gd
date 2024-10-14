extends Node

func _process(delta: float) -> void:
	$LabelScore.text = str(Global.score)

func _ready() -> void:
	play_game()
	
func play_game():
	$Ball.start()
	$PadlePlayer.position = $Markets/MarkerPaddle.position
	$Ball.position = $Markets/MarkerBall.position

func _on_area_down_body_entered(body: Node2D) -> void:
	play_game()
	Global.reset_score()
