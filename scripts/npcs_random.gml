/// npcs_random(filter)

var filter = argument0;

if (npcs_count(filter) == 0) 
    return -1;
    
while (true)
{
    var npc_id = irandom(npcs_number() - 1);
    if (script_execute(filter, npc_id))
        return npc_id;
}