/// npc_get_sprite_fairy(type, dir)

switch (round_direction(argument1))
{
    case   0: return global.npc_fairy_walk_000[argument0];
    case  45: return global.npc_fairy_walk_045[argument0];
    case  90: return global.npc_fairy_walk_090[argument0];
    case 135: return global.npc_fairy_walk_135[argument0];
    case 180: return global.npc_fairy_walk_180[argument0];
    case 225: return global.npc_fairy_walk_225[argument0];
    case 270: return global.npc_fairy_walk_270[argument0];
    case 315: return global.npc_fairy_walk_315[argument0];
}