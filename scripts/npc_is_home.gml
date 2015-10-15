/// npc_is_home(npc_id)

var npc_id = argument0;
return npc_is_inside(npc_id) and npc_get_building(npc_id) == npc_get_home(npc_id);
