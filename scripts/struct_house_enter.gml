/// struct_house_enter(id, npc)

// TODO add length parameter

var npc_inst = argument1;

with (argument0)
{
    for (var i = 0; i < occupancy_max; i++)
    {
        if (occupant[i] == noone)
        {
            // First occupant MUST be the owner,
            // so claim the house as theirs
            if (i == 0)
            {
                owner = npc_inst.npc_id;
                npc_inst.can_direct = true;
            }
        
            npc_inst.direction = 90;
            npc_set_building(npc_inst.npc_id, id);
            
            occupant[i] = npc_inst;
            occupant_active[i] = true;
            occupant_leaving[i] = false;
            occupancy++;
            
            return true;
        }
    }
}

return false;
