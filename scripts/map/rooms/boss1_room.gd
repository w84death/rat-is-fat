extends "res://scripts/map/rooms/abstract_room.gd"

func _init():
    self.room = [
        [ 4,  5,  5,  5,  6,  4,  5,  5,  5,  5,  5,  5,  5,  5,  5,  5,  6],
        [ 7,  0, 29,  0,  9,  7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [12, 26, 27, 28, 11,  7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 4, 21, 19, 20,  5, 14,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [ 7,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  9],
        [12, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 11],
    ]

    self.enemies = [
        [14, 2, 'grumpy_prime_pile'],
    ]

    self.doors = [
        [1, 2, 'south'],
        [1, 3, 'north']
    ]

    self.exits = [
        [2, 1, 'next']
    ]
