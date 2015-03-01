/// player_interact_house(id)

with (argument0)
{
    var at_entrance = position_meeting(obj_player.x, obj_player.y, entrance);
    if (at_entrance)
    {
        if (struct_house_is_unowned(id) and player_is_homeless())
        {
            dialogue_reset();
            dialogue_set_message(0, "Would you like to move in here?");
            dialogue_set_responses("Sure!", "No thanks");
            dialogue_set_message(1, "Welcome to your new home!");
            dialogue_set_endaction(1, endaction_player_movein);
            dialogue_show(2);
        }
        
        // TODO enter NPC homes
        else if (struct_house_is_player_owned(id))
        {
            obj_player.interior_id = id;   
            transition_to(rm_house);
        }
    }
}