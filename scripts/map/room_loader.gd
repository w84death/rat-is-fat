

var bag
var tilemap
var room_max_size = Vector2(20, 12)
var side_offset = 3

var spawns = {
    'initial0' : Vector2(8, 5),
    'initial1' : Vector2(9, 5),
    'initial2' : Vector2(8, 6),
    'initial3' : Vector2(9, 6),
    'north0' : Vector2(8, 1),
    'north1' : Vector2(9, 1),
    'north2' : Vector2(8, 2),
    'north3' : Vector2(9, 2),
    'south0' : Vector2(8, 9),
    'south1' : Vector2(9, 9),
    'south2' : Vector2(8, 8),
    'south3' : Vector2(9, 8),
    'east0' : Vector2(15, 5),
    'east1' : Vector2(14, 5),
    'east2' : Vector2(15, 6),
    'east3' : Vector2(14, 6),
    'west0' : Vector2(1, 5),
    'west1' : Vector2(2, 5),
    'west2' : Vector2(1, 6),
    'west3' : Vector2(2, 6),
}

var room_templates = {
    'start' : preload("res://scripts/map/rooms/start_room.gd"),
    'easy1' : preload("res://scripts/map/rooms/easy1_room.gd"),
    'easy2' : preload("res://scripts/map/rooms/easy1_room.gd"),
    'easy3' : preload("res://scripts/map/rooms/easy1_room.gd"),
    'easy4' : preload("res://scripts/map/rooms/easy1_room.gd"),
    'easy5' : preload("res://scripts/map/rooms/easy1_room.gd"),
    'easy6' : preload("res://scripts/map/rooms/easy1_room.gd"),
}

var difficulty_templates = [
    ['start'],
    ['easy1', 'easy2', 'easy3', 'easy4', 'easy5', 'easy6'],
]


var door_definitions = {
    'north' : [
        [7, 0, 14],
        [8, 0, 0, 5],
        [9, 0, 13],
    ],
    'south' : [
        [7, 10, 16],
        [8, 10, 0, 10],
        [9, 10, 15],
    ],
    'east' : [
        [16, 4, 13],
        [16, 5, 0, 9],
        [16, 6, 15],
    ],
    'west' : [
        [0, 4, 14],
        [0, 5, 0, 7],
        [0, 6, 16],
    ],
}

func _init_bag(bag):
    self.bag = bag
    self.tilemap = self.bag.action_controller.tilemap

func load_room(cell):
    var template_name = cell.template_name
    var data
    self.clear_space()
    self.bag.game_state.current_room = self.room_templates[template_name].new()
    data = self.create_passages(self.bag.game_state.current_room.room, cell)
    self.apply_room_data(data)
    if self.bag.game_state.current_room.enemies.size() > 0 && not cell.clear:
        self.spawn_enemies(self.bag.game_state.current_room.enemies)
        self.close_doors()
    else:
        self.open_doors()
    self.bag.items.reset()
    if cell.items_loaded:
        self.load_previous_items(cell.items)
    else:
        self.spawn_items(self.bag.game_state.current_room.items, cell)
        cell.items_loaded = true

func create_passages(data, cell):
    if cell.north != null:
        data = self.open_passage(data, self.door_definitions['north'])
    if cell.south != null:
        data = self.open_passage(data, self.door_definitions['south'])
    if cell.east != null:
        data = self.open_passage(data, self.door_definitions['east'])
    if cell.west != null:
        data = self.open_passage(data, self.door_definitions['west'])
    return data

func open_passage(data, passage):
    for tile in passage:
        data[tile[1]][tile[0]] = tile[2]
    return data

func close_doors():
    self.bag.game_state.doors_open = false
    self.switch_doors(3)

func open_doors():
    self.bag.game_state.doors_open = true
    self.switch_doors(2)

func switch_doors(tile_index):
    var door_coords
    var cell = self.bag.game_state.current_cell
    if cell.north != null:
        door_coords = self.door_definitions['north'][1]
        self.tilemap.set_cell(door_coords[0] + self.side_offset, door_coords[1], door_coords[tile_index])
    if cell.south != null:
        door_coords = self.door_definitions['south'][1]
        self.tilemap.set_cell(door_coords[0] + self.side_offset, door_coords[1], door_coords[tile_index])
    if cell.east != null:
        door_coords = self.door_definitions['east'][1]
        self.tilemap.set_cell(door_coords[0] + self.side_offset, door_coords[1], door_coords[tile_index])
    if cell.west != null:
        door_coords = self.door_definitions['west'][1]
        self.tilemap.set_cell(door_coords[0] + self.side_offset, door_coords[1], door_coords[tile_index])

func clear_space():
    for x in range(self.room_max_size.x):
        for y in range(self.room_max_size.y):
            self.tilemap.set_cell(x, y, -1)

func apply_room_data(data):
    var row
    for y in range(0, data.size()):
        row = data[y]
        for x in range(0, row.size()):
            self.tilemap.set_cell(x + self.side_offset, y, data[y][x])

func spawn_enemies(enemies):
    var position = Vector2(0, 0)
    self.bag.enemies.reset()
    for enemy_data in enemies:
        position.x = enemy_data[0] + self.side_offset
        position.y = enemy_data[1]
        self.bag.enemies.spawn(enemy_data[2], position)

func spawn_items(items, cell):
    var position = Vector2(0, 0)
    for item_data in items:
        position.x = item_data[0] + self.side_offset
        position.y = item_data[1]
        cell.add_item(self.bag.items.spawn(item_data[2], position))

func load_previous_items(items):
    for item in items:
        items[item].attach()
        self.bag.items.add_item(items[item])

func get_spawn_position(spawn_name):
    var position = self.bag.room_loader.spawns[spawn_name]
    position.x = position.x + self.side_offset
    return self.translate_position(position)

func translate_position(position):
    return self.tilemap.map_to_world(position)