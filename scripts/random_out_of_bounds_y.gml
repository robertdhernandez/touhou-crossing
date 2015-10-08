/// random_out_of_bounds_y(direction)

switch(argument0)
{
    // Left
    case 0: return random_range(tile_size, room_height - tile_size);
    
    // Right
    case 1: return random_range(tile_size, room_height - tile_size);
    
    // Up
    case 2: return -30;
    
    // Down
    case 3: return room_height + 30;
}
