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
