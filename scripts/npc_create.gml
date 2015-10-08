/// npc_create(x, y, npc_id)

var npc_id = argument2;
var is_fairy = npc_is_fairy(npc_id);

var inst = instance_create(argument0, argument1, iff(is_fairy, obj_npc_fairy, obj_npc));
inst.npc_id = npc_id;

return inst;
