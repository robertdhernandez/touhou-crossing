/// npc_move_to(npc_inst, x, y)

with (argument0)
{
    var cur_x = x, cur_y =  y;

    dest_x = argument1;
    dest_y = argument2;
    
    x = dest_x; y = dest_y;
    dest_id = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, all, false, true);
    x = cur_x; y = cur_y;
    
    dest = dest_id == noone;
    
    if (dest_id != noone)
    {
        switch(dest_id.object_index)
        {
            case obj_struct_project:
                dest = npc_is_fairy(npc_id) and not npc_fairy_is_tired(id);
                if (dest)
                {
                    var len = point_distance(x, y, dest_id.x, dest_id.y);
                    var ang = point_direction(x, y, dest_id.x, dest_id.y);
                    
                    var cur_x = x, cur_y = y;
                    var free;
                    
                    do
                    {
                        len -= 4;
                        
                        x = cur_x + lengthdir_x(len, ang);
                        y = cur_y + lengthdir_y(len, ang);
                        
                        free = not place_meeting(x, y, dest_id);

                    } until free;
                    
                    dest_x = x; x = cur_x;
                    dest_y = y; y = cur_y;
                }
            break;
        
            case obj_struct_house:
                dest = struct_house_can_enter(dest_id, id);
                dest_x = dest_id.x;
                dest_y = dest_id.y + 40;
            break;
            
            default:
                dest = not object_is_ancestor(dest_id.object_index, obj_collision);
            break;
        }
    }
    
    dest_id = iff(dest, dest_id, noone);
    
    return dest;
}