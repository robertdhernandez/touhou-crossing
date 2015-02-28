/// player_interact_exit(id)

with (argument0)
{
    if (position_meeting(obj_player.x, obj_player.y, id) 
        and round_direction(obj_player.direction) == 270)
    {
        transition_to(rm_demo);
    }
}