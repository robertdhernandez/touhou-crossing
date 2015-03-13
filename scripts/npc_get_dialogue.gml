/// npc_get_dialogue(npc_id)

if (argument0 == npc.fairy)
    return global.npc_fairy_dialogue;

return global.npc_dialogue[argument0];