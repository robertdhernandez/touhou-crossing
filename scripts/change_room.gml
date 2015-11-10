/// transition_to(room_index, target_x, target_y, is_outside)

with (instance_create(0, 0, obj_util_transition))
{
    room_index = argument0;
    target_x = argument1;
    target_y = argument2;
    is_outside = argument3;
}

global.player_input = false;
