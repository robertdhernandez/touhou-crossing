/// player_interact_house(id)

with (argument0)
{
    var at_entrance = position_meeting(obj_player.x, obj_player.y, entrance);
    if (at_entrance)
    {
        obj_player.interior_id = id;   
        transition_to(rm_house);
    }
}