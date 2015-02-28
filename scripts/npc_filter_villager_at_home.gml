/// npc_filter_villager_at_home(npc_id)

var npc_id = argument0;
return npc_is_villager(npc_id) and npc_is_home(npc_id);