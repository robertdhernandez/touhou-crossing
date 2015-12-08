#define player_interact
/// player_interact(x, y)

with (obj_player)
{
    var xx = argument0;//x + lengthdir_x(interact_dist, direction);
    var yy = argument1;//y + lengthdir_y(interact_dist, direction);
    
    with (collision_line(x, y, xx, yy, obj_entity, false, true))
    {
        other.interact_id = id;
    
        var scr = -1;
    
        switch (object_index)
        {
            case obj_interior_exit:
                player_interact_exit(id);
            break;
        
            case obj_npc:
            case obj_npc_fairy:
                player_interact_npc(id);
            break;
            
            case obj_struct_project: 
                player_interact_project(id);
            break;
            
            case obj_struct_house:
                player_interact_house(id);
            break;
        }
        
        if (global.debug)
            show_debug_message(object_get_name(object_index));
    }
}
#define player_interact_exit
/// player_interact_exit(id)

with (argument0)
{
    if (position_meeting(obj_player.x, obj_player.y, id) 
        and round_direction(obj_player.direction) == 270)
    {
        change_room(rm_demo, obj_player.exit_x, obj_player.exit_y);
    }
}

#define player_interact_house
/// player_interact_house(id)

with (argument0)
{
    var at_entrance = point_in_rectangle(obj_player.x, obj_player.y, 
        entrance[0], entrance[1], entrance[0] + entrance[2], entrance[1] + entrance[3]);
        
    if (at_entrance)
    {
        obj_player.exit_x = mean(entrance[0], entrance[0] + entrance[2]);
        obj_player.exit_y = mean(entrance[1], entrance[1] + entrance[3]);
        
        with (change_room(interior_room, interior_room_x, interior_room_y))
            interior = other.interior;
    }
}

#define player_interact_npc
/// player_interact_npc(id)

with (argument0)
{
    audio_play_sound(snd_ok, false, 0);

    can_think = false;
    direction = point_direction(x, y, obj_player.x, obj_player.y);
    
    dest_id = -1;
    path_end();
    
    npc_speak(id, json_greeting);
}

#define player_interact_project
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