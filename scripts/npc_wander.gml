/// npc_wander(npc_inst, min_dist, max_dist)

with (argument0)
{
    var tar_x, tar_y;
    var in_bounds, can_move;
    
    do
    {
        var len = random_range(argument1, argument2);
        var dir = irandom(360);
    
        var tar_x = x + lengthdir_x(len, dir);
        var tar_y = y + lengthdir_y(len, dir);
        
        in_bounds = tile_size < tar_x and tar_x < room_width - tile_size 
                and tile_size < tar_y and tar_y < room_height - tile_size;
        
        can_move = in_bounds and npc_move_to(id, tar_x, tar_y);
        
    } until (can_move);
}