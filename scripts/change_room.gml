/// change_room(room_index, target_x, target_y)

audio_play_sound(snd_warp, 0, false);
global.player_input = false;

with (instance_create(0, 0, obj_util_transition))
{
    room_index = argument0;
    target_x = argument1;
    target_y = argument2;
    
    interior = -1;
    
    return id;
}
