extends Node

var score:int = 0;

@onready var score_label = $"../Labels/ScoreLabel"

func add_point():
	score += 1;
	score_label.text = "Great job!\n" + "You collected\n" + str(score) + "coins.";
	print(score);
