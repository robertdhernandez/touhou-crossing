/// npc_direct_movein()

if (global.debug)
    show_debug_message("npc_direct_movein()");
        
var npc_id = npcs_random(npc_filter_outside_visitor);
var house = struct_houses_random_unclaimed();

if (npc_id != -1 and house != -1)
{
    var npc_inst = npc_get_instance(npc_id);
    npc_inst.can_direct = false;

    npc_set_home(npc_id, house);
    npc_go_home(npc_inst);
    ui_ticker_post(npc_get_name(npc_id) + " is moving in");
    return true;
}

return false;