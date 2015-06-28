/// npc_get_sprite(npc_id, dir)

switch (round_direction(argument1))
{
    case 0: return global.npc_walk_000[argument0];
    case 1: return global.npc_walk_045[argument0];
    case 2: return global.npc_walk_090[argument0];
    case 3: return global.npc_walk_135[argument0];
    case 4: return global.npc_walk_180[argument0];
    case 5: return global.npc_walk_225[argument0];
    case 6: return global.npc_walk_270[argument0];
    case 7: return global.npc_walk_315[argument0];
}
