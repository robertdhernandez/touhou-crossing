/// struct_house_show_info(id)

with (argument0)
{
    return rectangle_in_rectangle(obj_player.bbox_left, obj_player.bbox_top, 
                                  obj_player.bbox_right, obj_player.bbox_bottom, 
                                  bbox_left - tile_size, bbox_top - tile_size, 
                                  bbox_right + tile_size, bbox_bottom + tile_size) != 0
        or position_meeting(mouse_x, mouse_y, id);
}
