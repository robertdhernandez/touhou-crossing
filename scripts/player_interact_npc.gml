/// player_interact_npc(id)

with (argument0)
{
    can_think = false;
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    
    dest_id = -1;
    path_end();
    
    npc_speak(id, speak.greet);
}