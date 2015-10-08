/// npc_direct_moveout()

if (global.debug)
    show_debug_message("npc_direct_moveout()");

var npc_id = npcs_random(npc_filter_villager_at_home);
if (npc_id != -1)
{
    npc_set_home(npc_id, -1);
    ui_ticker_post(npc_get_name(npc_id) + " moved out");
    return true;
}

return false;
