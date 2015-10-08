/// npc_filter_outside_visitor(npc_id)

var npc_id = argument0;
return npc_is_present(npc_id) and npc_is_visitor(npc_id) and npc_is_outside(npc_id);
