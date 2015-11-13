/// change_room(room_index, target_x, target_y, is_outside)

global.player_input = false;

with (instance_create(0, 0, obj_util_transition))
{
    room_index = argument0;
    target_x = argument1;
    target_y = argument2;
    is_outside = argument3;
    
    interior = -1;
    
    return id;
}
