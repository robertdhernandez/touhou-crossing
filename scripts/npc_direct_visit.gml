/// npc_director_visit()

if (global.debug)
    show_debug_message("npc_direct_visit()");

if (npcs_count(npc_is_present) < max_present)
{
    var npc_id = npcs_random(npc_filter_not_present);
    if (npc_id != -1)
    {
        var dir = choose(0, 1, 2, 3);
        var xx = random_out_of_bounds_x(dir);
        var yy = random_out_of_bounds_y(dir);
        
        with (npc_create(xx, yy, npc_id))
        {
            var dis = 75; //random_range(50, 100);
            var dir = point_direction(x, y, room_width / 2, room_height / 2);
            
            npc_set_present(npc_id, true);
            npc_move_to(id, x + lengthdir_x(dis, dir), y + lengthdir_y(dis, dir));
            
            ui_ticker_post(npc_get_name(npc_id) + " wandered into the village");
            return true;
        }
    }
}

return false;