/// player_interact()

with (obj_player)
{
    var xx = x + lengthdir_x(interact_dist, direction);
    var yy = y + lengthdir_y(interact_dist, direction);
    
    with (collision_line(x, y, xx, yy, obj_entity, false, true))
    {
        other.interact_id = id;
    
        var scr = -1;
    
        switch (object_index)
        {
            case obj_interior_exit:
                scr = player_interact_exit;
            break;
        
            case obj_npc:
            case obj_npc_fairy:
                scr = player_interact_npc;
            break;
            
            case obj_struct_project: 
                scr = player_interact_project;
            break;
            
            case obj_struct_house:
                scr = player_interact_house;
            break;
        }
        
        if (scr != -1)
            script_execute(scr, id);
        
        if (global.debug)
            show_debug_message(object_get_name(object_index));
    }
}