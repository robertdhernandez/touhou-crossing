/// npc_go_home(npc_inst)

with (argument0)
{
    var home = npc_get_home(npc_id);
    if (home != -1) 
        npc_move_to(id, home.x, home.y);
}
