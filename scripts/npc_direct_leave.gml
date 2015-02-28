/// npc_direct_leave()

if (global.debug)
    show_debug_message("npc_direct_leave()");

var npc_id = npcs_random(npc_filter_outside_visitor);
if (npc_id != -1)
{
    var npc_inst = npc_get_instance(npc_id);

    if (npc_inst != noone)
    {
        var dir = choose(0, 1, 2, 3);
        var xx = random_out_of_bounds_x(dir);
        var yy = random_out_of_bounds_y(dir);
    
        npc_inst.can_direct = false;
        npc_set_home(npc_id, -1);
        npc_move_to(npc_inst, xx, yy);
        
        ui_ticker_post(npc_get_name(npc_id) + " is leaving");
        return true;
    }
}

return false;