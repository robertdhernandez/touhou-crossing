/// npc_think(npc_inst)

var scr = npc_think_default;

switch (argument0.npc_id)
{
    case npc.fairy: scr = npc_think_fairy; break;
}

script_execute(scr, argument0);