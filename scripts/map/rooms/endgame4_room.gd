extends "res://scripts/map/rooms/abstract_room.gd"

func _init():
    self.room = [
        [   4,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   5,   6],
        [   7,   0,   1,   2, 107, 107, 106,   1, 107,   2, 107, 106,   1, 107,   2,   1,   1, 106,   1,   9],
        [   7, 106, 107, 106,   2, 106,   0, 107, 106, 107, 107,   8, 107,   2,   0,   2, 106, 106,   2,   9],
        [   7, 107, 107,   2, 106,   1, 106, 107,   2,   2, 106, 106, 107, 106,   2, 107,   2,   0,   0,   9],
        [   7,   2, 107, 106,   2, 107,   2, 106, 106,   2,   1, 107,   1,   2, 107, 107,   1, 106, 106,   9],
        [   7, 106, 106, 107, 106, 107,   2, 107,   2, 107,   0,   2, 107, 107,   2, 107,   0, 106,   0,   9],
        [   7,   2,   2, 106,   0, 106,   0, 107,   0,   1,   2, 107,   0,   2, 106, 107, 107,   2,   2,   9],
        [   7,   8, 106, 106, 106,   3, 106,   2, 107, 107,   8, 107,   2, 106,   1, 106,   2,   2,   2,   9],
        [   7, 106,   2, 107, 106,   2,   2,   1,   2, 106, 107,   1,   2,   3,   2,   1,   1,   2, 106,   9],
        [  12,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  11],
    ]

    self.enemies = [
        [14, 3, null, 4],
        [3, 8, null, 4],
    ]

    self.items = [
        [3, 3, 'cheese'],
        [14, 8, 'cheese']
    ]