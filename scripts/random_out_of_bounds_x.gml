/// random_out_of_bounds_x(direction)

switch(argument0)
{
    // Left
    case 0: return -30;
    
    // Right
    case 1: return room_width + 30;
    
    // Up
    case 2: return random_range(tile_size, room_width - tile_size);
    
    // Down
    case 3: return random_range(tile_size, room_width - tile_size);
}