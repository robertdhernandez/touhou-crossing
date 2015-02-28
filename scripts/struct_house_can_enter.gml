/// struct_house_can_enter(id, npc)

var home = argument0;
var npc_id = argument1.npc_id;

return not npc_is_fairy(npc_id) and (npc_get_home(npc_id) == home or struct_house_is_occupied(home)) and not struct_house_is_full(home);