extends "res://scripts/map/rooms/abstract_room.gd"

func _init():
    self.room = [
        [   4,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   6],
        [   7, 107, 106,   2, 107, 107, 106, 107, 107,   2, 107, 106,   2, 107,   2,   2,   2,   3, 106,   9],
        [   7, 106, 107, 106,   1, 106, 106,   0, 106,   0,   0, 107, 107,   2,   2,   2, 106, 106,   2,   9],
        [   7, 107, 107,   2, 106, 107, 106,   8,   2,   2, 106, 106, 107, 106,   2, 107,   2,   2,   1,   9],
        [   7,   2, 107, 106,   2, 107,   0, 106, 106,   2, 107,   0, 107,   2, 107, 107,   0, 106,   0,   9],
        [   7, 106, 106, 107, 106, 107,   2,   1,   2,   1, 106,   0, 107, 107,   8, 107, 106, 106,   2,   9],
        [   7,   3,   2, 106, 106,   0, 107,   1,   3, 107,   2, 107,   2,   2, 106, 107, 107,   2,   0,   9],
        [   7,   2, 106, 106, 106, 106,   1,   2, 107, 107, 107, 107,   2,   1, 107, 106,   2,   2,   2,   9],
        [   7, 106,   2, 107, 106,   2,   2,   2,   2,   1,   0,   0,   2, 107,   2, 106,   2,   2, 106,   9],
        [  12,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  11],
    ]

    self.items = [
        [7, 5, 'medicals'],
    ]