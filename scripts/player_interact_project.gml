/// player_interact_project(id)

with (argument0)
{
    if (player_has_follower())
    {
        with (obj_player)
        {
            speed = 0;
            direction = point_direction(x, y, follower.x, follower.y);
            
            dialogue_reset();
            dialogue_set_speaker(npc_get_name(follower.npc_id));
            dialogue_set_message(0, "Do you need help building this?");
            dialogue_set_responses("Yeah", "Actually, no");
            dialogue_set_message(1, "Alrighty then, I'll get right to it!");
            dialogue_set_endaction(1, endaction_fairy_build);
            dialogue_set_message(2, "Okay.");
            dialogue_show(0);
        }
    }
    else
    {
        dialogue_reset();
        dialogue_set_message(0, struct_get_name(struct_id) + " under construction.");
        dialogue_show(2);
    }
}