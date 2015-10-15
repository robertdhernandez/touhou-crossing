/// npc_get_name(npc_id)

if (npc_is_fairy(argument0))
    return "Fairy";

return global.npc_name[argument0];
