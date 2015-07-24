
var bag

var game_board = preload("res://scenes/game_board.xscn").instance()

func _init_bag(bag):
    self.bag = bag

func start_game():
    print("starting game")
    self.bag.game_state.game_in_progress = true
    self.bag.root.add_child(self.game_board)

func end_game():
    self.bag.game_state.game_in_progress = false
    self.bag.root.remove_child(self.game_board)
